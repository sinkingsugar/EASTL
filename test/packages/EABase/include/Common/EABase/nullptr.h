/*-----------------------------------------------------------------------------
 * nullptr.h
 *
 * Copyright (c) Electronic Arts Inc. All rights reserved.
 *---------------------------------------------------------------------------*/


//#include <EABase/eabase.h>
//#include <EABase/eahave.h>


#if defined(EA_PRAGMA_ONCE_SUPPORTED)
	#pragma once /* Some compilers (e.g. VC++) benefit significantly from using this. We've measured 3-4% build speed improvements in apps as a result. */
#endif


namespace std { typedef decltype(nullptr) nullptr_t; }

