#pragma once

#ifdef DODO_PLATFORM_WINDOWS
#if DODO_DYNAMIC_LINK
	#ifdef DODO_BUILD_DLL
		#define DODO_API __declspec(dllexport)
	#else
		#define DODO_API __declspec(dllimport)
	#endif
#else
		#define DODO_API
#endif
#else
    #define DODO_API
#endif