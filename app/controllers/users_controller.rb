class UsersController < ApplicationController
    before_action :authorized, only:[:persist]

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user).to_serialized_json
    end

    def index
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def new
        user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user).to_serialized_json, token: token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def login
        user = User.find_by(username:params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user).to_serialized_json, token:token}
        else
            render json: {error: "Incorrect username or password. Please try again."}
        end 
    end 

    def persist
        token = encode_token({user_id: user.id})
        render json: {user: UserSerializer.new(user).to_serialized_json, token:token}
    end 

    def destroy
        user = User.find_by(id: params[:id]).destroy
    end


    private 

    def user_params
        params.permit(:username, :password, :start_work_time, :min_num_hours, :max_num_hours, :user)
    end

end
