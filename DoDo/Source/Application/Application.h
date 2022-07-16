#pragma once

namespace DoDo
{
	class DODO_API Application
	{
	public:
		Application();
		virtual ~Application();
	};

	Application* CreateApplication();
}