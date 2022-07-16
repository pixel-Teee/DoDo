#pragma once

extern DoDo::Application* DoDo::CreateApplication();

int main()
{
    //std::cout << "Hello World!" << std::endl;

    auto app = DoDo::CreateApplication();

    delete app;
    
    return 0;
}