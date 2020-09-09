class UsersController < ApplicationController
    before_action :authorized, only:[:persist]

    def show
        @user = User.find_by(id: params[:id])
        render json: UserSerializer.new(@user).to_serialized_json
    end

    def index
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user).to_serialized_json, token: token}, status: :created
        else
            render json: { error: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        # Move check start time functionality to front end
        @user = User.find_by(id: params[:id])
        if user_params[:start_work_time]
            start_work_time = user_params[:start_work_time]
        else
            start_work_time = @user.start_work_time
        end
        if @user.update(username: user_params[:username], start_work_time: start_work_time, min_num_hours: user_params[:min_num_hours], max_num_hours: user_params[:max_num_hours])
            render json: {user: UserSerializer.new(@user).to_serialized_json}
        else
            render json: { error: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    def login
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user).to_serialized_json, token:token}
        else
            render json: {error: "Incorrect username or password. Please try again."}
        end 
    end 

    def persist
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user).to_serialized_json, token:token}
    end 

    def destroy
        @user = User.find_by(id: params[:id]).destroy
        render json: UserSerializer.new(@user).to_serialized_json
    end


    private 

    def user_params
        params.permit(:username, :password, :start_work_time, :min_num_hours, :max_num_hours, :user, :id)
    end

end
