! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_223:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_222:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_221:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_220:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_219:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_218:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_217:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_216:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_215:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_214:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_213:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_212:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_211:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_210:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_209:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_208:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_207:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_206:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_205:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_204:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_203:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_202:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_201:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_200:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_199:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_198:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_197:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_196:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_195:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_194:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_193:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_192:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_191:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_190:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_189:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_188:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_187:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_186:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_185:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_184:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_183:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_182:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_181:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_180:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_179:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_178:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_177:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_176:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_175:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_174:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_173:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_172:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_171:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_170:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_169:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_167:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_164:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_161:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_158:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_157:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_156:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_155:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_154:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_152:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_151:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_150:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_149:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_148:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_147:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_146:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_145:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_144:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_143:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_142:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_141:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_140:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_139:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_138:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_137:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_136:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_135:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_134:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_131:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_130:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_129:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_128:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_127:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_126:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_122:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_121:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_118:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_117:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_116:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_115:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_114:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_113:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_112:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_111:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_110:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_109:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_108:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_106:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_103:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_102:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_100:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_99:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_98:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_97:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_96:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_95:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_94:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_93:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_92:
	.word	15			! length
	.ascii	"Unlocked before"
	.align
_StringConst_91:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_90:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_89:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_88:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_87:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_86:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_85:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_84:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_83:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_82:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_81:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_78:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_76:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_73:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_70:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_69:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_68:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_67:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_56:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_55:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_54:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_53:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_48:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_47:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_46:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Handle_Sys_Fork invoked!\n"
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_43:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_41:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_40:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	25			! length
	.ascii	"Failure in LoadExecutable"
	.align
_StringConst_26:
	.word	19			! length
	.ascii	"Failure in openning"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x7923f364,r4		! myHashVal = 2032399204
	cmp	r3,r4
	be	_Label_232
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_232:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_233
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_233
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_233
_Label_233:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_234 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3094:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3094
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_238 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_239 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_238  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_240 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_241 = _temp_240 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_241 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3095:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3095
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_243 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_244 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_243  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_245 = _function_231_IdleFunction
	set	_function_231_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_246 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_247
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_248
	.word	-12
	.word	4
	.word	_Label_249
	.word	-16
	.word	4
	.word	_Label_250
	.word	-20
	.word	4
	.word	_Label_251
	.word	-24
	.word	4
	.word	_Label_252
	.word	-28
	.word	4
	.word	_Label_253
	.word	-32
	.word	4
	.word	_Label_254
	.word	-36
	.word	4
	.word	_Label_255
	.word	-40
	.word	4
	.word	_Label_256
	.word	-44
	.word	4
	.word	_Label_257
	.word	-48
	.word	4
	.word	_Label_258
	.word	-52
	.word	4
	.word	_Label_259
	.word	-56
	.word	4
	.word	_Label_260
	.word	-60
	.word	4
	.word	0
_Label_247:
	.ascii	"InitializeScheduler\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_231_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_261:
!	jmp	_Label_262
_Label_262:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_266 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_264 else goto _Label_265
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_265
	jmp	_Label_264
_Label_264:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_267
_Label_265:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_267:
! END WHILE...
	jmp	_Label_261
_Label_263:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_IdleFunction:
	.word	_sourceFileName
	.word	_Label_268
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-12
	.word	4
	.word	_Label_271
	.word	-16
	.word	4
	.word	0
_Label_268:
	.ascii	"IdleFunction\0"
	.align
_Label_269:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_274 ) then goto _Label_273		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_273
!	jmp	_Label_272
_Label_272:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_276 [0 ] into _temp_277
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_275 = _temp_277		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_273:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_278 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_279:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_283 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_282  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_282 then goto _Label_281 else goto _Label_280
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_280
	jmp	_Label_281
_Label_280:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_284 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_285 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_279
_Label_281:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_288 ) then goto _Label_287		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_287
!	jmp	_Label_286
_Label_286:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_290 [0 ] into _temp_291
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_289 = _temp_291		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_292 = *_temp_293  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_292) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _temp_292 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_287:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_295
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_296
	.word	8
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	_Label_298
	.word	-20
	.word	4
	.word	_Label_299
	.word	-24
	.word	4
	.word	_Label_300
	.word	-28
	.word	4
	.word	_Label_301
	.word	-32
	.word	4
	.word	_Label_302
	.word	-36
	.word	4
	.word	_Label_303
	.word	-40
	.word	4
	.word	_Label_304
	.word	-44
	.word	4
	.word	_Label_305
	.word	-48
	.word	4
	.word	_Label_306
	.word	-52
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-56
	.word	4
	.word	_Label_309
	.word	-60
	.word	4
	.word	_Label_310
	.word	-64
	.word	4
	.word	_Label_311
	.word	-68
	.word	4
	.word	_Label_312
	.word	-72
	.word	4
	.word	_Label_313
	.word	-76
	.word	4
	.word	_Label_314
	.word	-80
	.word	4
	.word	0
_Label_295:
	.ascii	"Run\0"
	.align
_Label_296:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_282\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_315 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_316 = _function_230_ThreadPrintShort
	set	_function_230_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_317 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_316  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_319
	.word	-12
	.word	4
	.word	_Label_320
	.word	-16
	.word	4
	.word	_Label_321
	.word	-20
	.word	4
	.word	_Label_322
	.word	-24
	.word	4
	.word	0
_Label_318:
	.ascii	"PrintReadyList\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_322:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_323  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_324 = *_temp_325  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_326 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	_Label_331
	.word	-24
	.word	4
	.word	_Label_332
	.word	-28
	.word	4
	.word	_Label_333
	.word	-32
	.word	4
	.word	0
_Label_327:
	.ascii	"ThreadStartMain\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_332:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_333:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_334 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_335 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_337
	.word	-12
	.word	4
	.word	_Label_338
	.word	-16
	.word	4
	.word	_Label_339
	.word	-20
	.word	4
	.word	0
_Label_336:
	.ascii	"ThreadFinish\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_340 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_342		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_342
!	jmp	_Label_341
_Label_341:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_343 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_345 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_344 = *_temp_345  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_342:
! CALL STATEMENT...
!   _temp_346 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_347 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_348 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_349
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_350
	.word	8
	.word	4
	.word	_Label_351
	.word	-12
	.word	4
	.word	_Label_352
	.word	-16
	.word	4
	.word	_Label_353
	.word	-20
	.word	4
	.word	_Label_354
	.word	-24
	.word	4
	.word	_Label_355
	.word	-28
	.word	4
	.word	_Label_356
	.word	-32
	.word	4
	.word	_Label_357
	.word	-36
	.word	4
	.word	_Label_358
	.word	-40
	.word	4
	.word	0
_Label_349:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_350:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_360		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_360
!	jmp	_Label_359
_Label_359:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_361
_Label_360:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_361:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_362
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_363
	.word	8
	.word	4
	.word	_Label_364
	.word	-12
	.word	4
	.word	0
_Label_362:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_363:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_230_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	749,r13		! source line 749
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_368		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_368
!   _temp_367 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_369
_Label_368:
!   _temp_367 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_369:
!   if _temp_367 then goto _Label_366 else goto _Label_365
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_365
	jmp	_Label_366
_Label_365:
! THEN...
	mov	758,r13		! source line 758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_370 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_366:
! CALL STATEMENT...
!   _temp_371 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_373 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_372 = *_temp_373  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_374 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	764,r13		! source line 764
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_383 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_382 = *_temp_383  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_377
	cmp	r1,2
	be	_Label_378
	cmp	r1,3
	be	_Label_379
	cmp	r1,4
	be	_Label_380
	cmp	r1,5
	be	_Label_381
	jmp	_Label_375
! CASE 1...
_Label_377:
! CALL STATEMENT...
!   _temp_384 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0BR",r10
	jmp	_Label_376
! CASE 2...
_Label_378:
! CALL STATEMENT...
!   _temp_385 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0BR",r10
	jmp	_Label_376
! CASE 3...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0BR",r10
	jmp	_Label_376
! CASE 4...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0BR",r10
	jmp	_Label_376
! CASE 5...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0BR",r10
	jmp	_Label_376
! DEFAULT CASE...
_Label_375:
! CALL STATEMENT...
!   _temp_389 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	781,r13		! source line 781
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_376:
! CALL STATEMENT...
!   _temp_390 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_391 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_392 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_393
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_394
	.word	8
	.word	4
	.word	_Label_395
	.word	-16
	.word	4
	.word	_Label_396
	.word	-20
	.word	4
	.word	_Label_397
	.word	-24
	.word	4
	.word	_Label_398
	.word	-28
	.word	4
	.word	_Label_399
	.word	-32
	.word	4
	.word	_Label_400
	.word	-36
	.word	4
	.word	_Label_401
	.word	-40
	.word	4
	.word	_Label_402
	.word	-44
	.word	4
	.word	_Label_403
	.word	-48
	.word	4
	.word	_Label_404
	.word	-52
	.word	4
	.word	_Label_405
	.word	-56
	.word	4
	.word	_Label_406
	.word	-60
	.word	4
	.word	_Label_407
	.word	-64
	.word	4
	.word	_Label_408
	.word	-68
	.word	4
	.word	_Label_409
	.word	-72
	.word	4
	.word	_Label_410
	.word	-76
	.word	4
	.word	_Label_411
	.word	-9
	.word	1
	.word	_Label_412
	.word	-80
	.word	4
	.word	0
_Label_393:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_394:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_411:
	.byte	'C'
	.ascii	"_temp_367\0"
	.align
_Label_412:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_229_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1118,r13		! source line 1118
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_413 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_415
	.word	8
	.word	4
	.word	_Label_416
	.word	-12
	.word	4
	.word	0
_Label_414:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1128,r13		! source line 1128
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_417 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1134,r13		! source line 1134
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-12
	.word	4
	.word	0
_Label_418:
	.ascii	"ProcessFinish\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1139,r13		! source line 1139
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_421 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_422 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_422  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_423 = _function_228_StartUserProcess
	set	_function_228_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_424
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_425
	.word	-12
	.word	4
	.word	_Label_426
	.word	-16
	.word	4
	.word	_Label_427
	.word	-20
	.word	4
	.word	_Label_428
	.word	-24
	.word	4
	.word	0
_Label_424:
	.ascii	"InitFirstProcess\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_228_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_StartUserProcess,r1
	push	r1
	mov	53,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	1149,r13		! source line 1149
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3108
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_430 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   Send message GetANewProcess
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: *_temp_431 = p  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-88],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = p + 24
	load	[r14+-100],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_432 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-84],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_433 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-80]
!   _temp_434 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_435
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_435
	jmp	_Label_436
_Label_435:
! THEN...
	mov	1164,r13		! source line 1164
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_437 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1164,r13		! source line 1164
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_436:
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_438 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_439 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! IF STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_441		(int)
	load	[r14+-200],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	1170,r13		! source line 1170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1170,r13		! source line 1170
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_443 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = p + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_444 = _temp_445		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   _temp_446 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_444  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = p + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_447 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3109:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3109
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_449 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_450 = _temp_449 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_448 = *_temp_450  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = 8192 * _temp_448		(int)
	mov	8192,r1
	load	[r14+-36],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_451 [999 ] into _temp_452
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_452		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = p + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_454 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+8]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0RE",r10
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_455
	.word	0		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	_Label_463
	.word	-40
	.word	4
	.word	_Label_464
	.word	-44
	.word	4
	.word	_Label_465
	.word	-48
	.word	4
	.word	_Label_466
	.word	-52
	.word	4
	.word	_Label_467
	.word	-56
	.word	4
	.word	_Label_468
	.word	-60
	.word	4
	.word	_Label_469
	.word	-64
	.word	4
	.word	_Label_470
	.word	-68
	.word	4
	.word	_Label_471
	.word	-72
	.word	4
	.word	_Label_472
	.word	-76
	.word	4
	.word	_Label_473
	.word	-80
	.word	4
	.word	_Label_474
	.word	-84
	.word	4
	.word	_Label_475
	.word	-88
	.word	4
	.word	_Label_476
	.word	-92
	.word	4
	.word	_Label_477
	.word	-96
	.word	4
	.word	_Label_478
	.word	-100
	.word	4
	.word	_Label_479
	.word	-104
	.word	4
	.word	_Label_480
	.word	-196
	.word	92
	.word	_Label_481
	.word	-200
	.word	4
	.word	_Label_482
	.word	-204
	.word	4
	.word	_Label_483
	.word	-208
	.word	4
	.word	0
_Label_455:
	.ascii	"StartUserProcess\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_480:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_481:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_484:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	1695,r13		! source line 1695
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0IF",r10
!   _temp_488 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_489 = _temp_488 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_487 = *_temp_489  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_487 == 0 then goto _Label_486		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_486
!	jmp	_Label_485
_Label_485:
! THEN...
	mov	1710,r13		! source line 1710
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0SE",r10
!   _temp_491 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_492 = _temp_491 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_490 = *_temp_492  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_490) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_486:
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_493
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_494
	.word	-12
	.word	4
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-20
	.word	4
	.word	_Label_497
	.word	-24
	.word	4
	.word	_Label_498
	.word	-28
	.word	4
	.word	_Label_499
	.word	-32
	.word	4
	.word	0
_Label_493:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1717,r13		! source line 1717
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_500
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_500:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_501 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	1743,r13		! source line 1743
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_504 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	1755,r13		! source line 1755
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_507 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_510 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_513 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	1791,r13		! source line 1791
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_516 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	1803,r13		! source line 1803
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_519 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_function_227_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_520
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_521
	.word	-12
	.word	4
	.word	0
_Label_520:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_227_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	1815,r13		! source line 1815
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_522 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_523 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_526 = *_temp_527  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_526 == 0 then goto _Label_525		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_525
!	jmp	_Label_524
_Label_524:
! THEN...
	mov	1826,r13		! source line 1826
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_529 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_528 = *_temp_529  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_528) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_530
_Label_525:
! ELSE...
	mov	1828,r13		! source line 1828
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_531 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_530:
! SEND STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_532
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_533
	.word	8
	.word	4
	.word	_Label_534
	.word	-12
	.word	4
	.word	_Label_535
	.word	-16
	.word	4
	.word	_Label_536
	.word	-20
	.word	4
	.word	_Label_537
	.word	-24
	.word	4
	.word	_Label_538
	.word	-28
	.word	4
	.word	_Label_539
	.word	-32
	.word	4
	.word	_Label_540
	.word	-36
	.word	4
	.word	0
_Label_532:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_533:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	1841,r13		! source line 1841
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1862,r13		! source line 1862
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3121
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_541
_Label_3121:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_541
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_541
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_555,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_555:
	jmp	_Label_547	! 1:	
	jmp	_Label_554	! 2:	
	jmp	_Label_544	! 3:	
	jmp	_Label_543	! 4:	
	jmp	_Label_546	! 5:	
	jmp	_Label_545	! 6:	
	jmp	_Label_548	! 7:	
	jmp	_Label_549	! 8:	
	jmp	_Label_550	! 9:	
	jmp	_Label_551	! 10:	
	jmp	_Label_552	! 11:	
	jmp	_Label_553	! 12:	
! CASE 4...
_Label_543:
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_544:
! CALL STATEMENT...
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_545:
! RETURN STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_546:
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_547:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_548:
! RETURN STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_549:
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_550:
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_551:
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_552:
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_553:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_554:
! CALL STATEMENT...
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_541:
! CALL STATEMENT...
!   _temp_564 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_565 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1895,r13		! source line 1895
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_542:
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_566
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_567
	.word	8
	.word	4
	.word	_Label_568
	.word	12
	.word	4
	.word	_Label_569
	.word	16
	.word	4
	.word	_Label_570
	.word	20
	.word	4
	.word	_Label_571
	.word	24
	.word	4
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	_Label_574
	.word	-20
	.word	4
	.word	_Label_575
	.word	-24
	.word	4
	.word	_Label_576
	.word	-28
	.word	4
	.word	_Label_577
	.word	-32
	.word	4
	.word	_Label_578
	.word	-36
	.word	4
	.word	_Label_579
	.word	-40
	.word	4
	.word	_Label_580
	.word	-44
	.word	4
	.word	_Label_581
	.word	-48
	.word	4
	.word	0
_Label_566:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	4,r1
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	1902,r13		! source line 1902
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_582 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_583 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_584 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_585
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_586
	.word	8
	.word	4
	.word	_Label_587
	.word	-12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	_Label_589
	.word	-20
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_590 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1912,r13		! source line 1912
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_591
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_592
	.word	-12
	.word	4
	.word	0
_Label_591:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	1917,r13		! source line 1917
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_593 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_594
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_595
	.word	-12
	.word	4
	.word	0
_Label_594:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	1923,r13		! source line 1923
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_596 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_597
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_598
	.word	-12
	.word	4
	.word	0
_Label_597:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	4,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_599 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1931,r13		! source line 1931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_600 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_601 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_602
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_603
	.word	8
	.word	4
	.word	_Label_604
	.word	-12
	.word	4
	.word	_Label_605
	.word	-16
	.word	4
	.word	_Label_606
	.word	-20
	.word	4
	.word	0
_Label_602:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	62,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	1940,r13		! source line 1940
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-200,r4
	mov	23,r3
_Label_3128:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3128
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_608 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-96]
!   _temp_609 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_610 = *_temp_611  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_610) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _temp_610 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_608  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_609  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_614		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_614
!	jmp	_Label_613
_Label_613:
! THEN...
	mov	1956,r13		! source line 1956
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-240],r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_614:
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   _temp_615 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-76]
!   _temp_616 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_615  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_617
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_617
	jmp	_Label_618
_Label_617:
! THEN...
	mov	1960,r13		! source line 1960
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_618:
! SEND STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0SE",r10
!   _temp_619 = &newAddrSpace
	add	r14,-200,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
	mov	1964,r13		! source line 1964
	mov	"\0\0SE",r10
!   _temp_620 = &newAddrSpace
	add	r14,-200,r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_620  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! IF STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_622		(int)
	load	[r14+-204],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_622
!	jmp	_Label_621
_Label_621:
! THEN...
	mov	1966,r13		! source line 1966
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_622:
! SEND STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   _temp_623 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: p = *_temp_624  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-104]
! SEND STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = p + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_625 = _temp_626		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   _temp_627 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_625  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = p + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_628 = newAddrSpace  (sizeInBytes=92)
	add	r14,-200,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3129:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3129
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   _temp_630 = &newAddrSpace
	add	r14,-200,r1
	store	r1,[r14+-32]
!   _temp_631 = _temp_630 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_629 = *_temp_631  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = 8192 * _temp_629		(int)
	mov	8192,r1
	load	[r14+-36],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_632 [999 ] into _temp_633
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_633		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = p + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_635 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+8]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_636
	.word	4		! total size of parameters
	.word	248		! frame size = 248
	.word	_Label_637
	.word	8
	.word	4
	.word	_Label_638
	.word	-12
	.word	4
	.word	_Label_639
	.word	-16
	.word	4
	.word	_Label_640
	.word	-20
	.word	4
	.word	_Label_641
	.word	-24
	.word	4
	.word	_Label_642
	.word	-28
	.word	4
	.word	_Label_643
	.word	-32
	.word	4
	.word	_Label_644
	.word	-36
	.word	4
	.word	_Label_645
	.word	-40
	.word	4
	.word	_Label_646
	.word	-44
	.word	4
	.word	_Label_647
	.word	-48
	.word	4
	.word	_Label_648
	.word	-52
	.word	4
	.word	_Label_649
	.word	-56
	.word	4
	.word	_Label_650
	.word	-60
	.word	4
	.word	_Label_651
	.word	-64
	.word	4
	.word	_Label_652
	.word	-68
	.word	4
	.word	_Label_653
	.word	-72
	.word	4
	.word	_Label_654
	.word	-76
	.word	4
	.word	_Label_655
	.word	-80
	.word	4
	.word	_Label_656
	.word	-84
	.word	4
	.word	_Label_657
	.word	-88
	.word	4
	.word	_Label_658
	.word	-92
	.word	4
	.word	_Label_659
	.word	-96
	.word	4
	.word	_Label_660
	.word	-100
	.word	4
	.word	_Label_661
	.word	-104
	.word	4
	.word	_Label_662
	.word	-108
	.word	4
	.word	_Label_663
	.word	-200
	.word	92
	.word	_Label_664
	.word	-204
	.word	4
	.word	_Label_665
	.word	-208
	.word	4
	.word	_Label_666
	.word	-212
	.word	4
	.word	_Label_667
	.word	-236
	.word	24
	.word	_Label_668
	.word	-240
	.word	4
	.word	0
_Label_636:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_661:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_662:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_663:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_667:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_668:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	23,r1
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	1987,r13		! source line 1987
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   _temp_669 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_670 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_671 = *_temp_672  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _temp_671 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_669  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_670  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_675		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_675
!	jmp	_Label_674
_Label_674:
! THEN...
	mov	1997,r13		! source line 1997
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_675:
! CALL STATEMENT...
!   _temp_676 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_677 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_678 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_679 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_680 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_681 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_682 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_683
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_684
	.word	8
	.word	4
	.word	_Label_685
	.word	-12
	.word	4
	.word	_Label_686
	.word	-16
	.word	4
	.word	_Label_687
	.word	-20
	.word	4
	.word	_Label_688
	.word	-24
	.word	4
	.word	_Label_689
	.word	-28
	.word	4
	.word	_Label_690
	.word	-32
	.word	4
	.word	_Label_691
	.word	-36
	.word	4
	.word	_Label_692
	.word	-40
	.word	4
	.word	_Label_693
	.word	-44
	.word	4
	.word	_Label_694
	.word	-48
	.word	4
	.word	_Label_695
	.word	-52
	.word	4
	.word	_Label_696
	.word	-56
	.word	4
	.word	_Label_697
	.word	-80
	.word	24
	.word	_Label_698
	.word	-84
	.word	4
	.word	0
_Label_683:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_684:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_697:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_698:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	23,r1
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	2011,r13		! source line 2011
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   _temp_699 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_700 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_702 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_701 = *_temp_702  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_701) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_703 = _temp_701 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_699  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_700  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_705		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_705
!	jmp	_Label_704
_Label_704:
! THEN...
	mov	2021,r13		! source line 2021
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_705:
! CALL STATEMENT...
!   _temp_706 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_709 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_713
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_714
	.word	8
	.word	4
	.word	_Label_715
	.word	-12
	.word	4
	.word	_Label_716
	.word	-16
	.word	4
	.word	_Label_717
	.word	-20
	.word	4
	.word	_Label_718
	.word	-24
	.word	4
	.word	_Label_719
	.word	-28
	.word	4
	.word	_Label_720
	.word	-32
	.word	4
	.word	_Label_721
	.word	-36
	.word	4
	.word	_Label_722
	.word	-40
	.word	4
	.word	_Label_723
	.word	-44
	.word	4
	.word	_Label_724
	.word	-48
	.word	4
	.word	_Label_725
	.word	-52
	.word	4
	.word	_Label_726
	.word	-56
	.word	4
	.word	_Label_727
	.word	-80
	.word	24
	.word	_Label_728
	.word	-84
	.word	4
	.word	0
_Label_713:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_714:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_727:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	9,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	2035,r13		! source line 2035
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_729 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_730 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_731 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_733 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_734 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_735 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_736 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_737
	.word	12		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_738
	.word	8
	.word	4
	.word	_Label_739
	.word	12
	.word	4
	.word	_Label_740
	.word	16
	.word	4
	.word	_Label_741
	.word	-12
	.word	4
	.word	_Label_742
	.word	-16
	.word	4
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	_Label_745
	.word	-28
	.word	4
	.word	_Label_746
	.word	-32
	.word	4
	.word	_Label_747
	.word	-36
	.word	4
	.word	_Label_748
	.word	-40
	.word	4
	.word	0
_Label_737:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_738:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_740:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	9,r1
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	2051,r13		! source line 2051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_749 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_751 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_754 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_755 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_756 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2061,r13		! source line 2061
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_757
	.word	12		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_758
	.word	8
	.word	4
	.word	_Label_759
	.word	12
	.word	4
	.word	_Label_760
	.word	16
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	_Label_764
	.word	-24
	.word	4
	.word	_Label_765
	.word	-28
	.word	4
	.word	_Label_766
	.word	-32
	.word	4
	.word	_Label_767
	.word	-36
	.word	4
	.word	_Label_768
	.word	-40
	.word	4
	.word	0
_Label_757:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	6,r1
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	2067,r13		! source line 2067
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_769 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2068,r13		! source line 2068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_770 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2069,r13		! source line 2069
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_771 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2071,r13		! source line 2071
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_772 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_773 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_774
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_775
	.word	8
	.word	4
	.word	_Label_776
	.word	12
	.word	4
	.word	_Label_777
	.word	-12
	.word	4
	.word	_Label_778
	.word	-16
	.word	4
	.word	_Label_779
	.word	-20
	.word	4
	.word	_Label_780
	.word	-24
	.word	4
	.word	_Label_781
	.word	-28
	.word	4
	.word	0
_Label_774:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	4,r1
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	2080,r13		! source line 2080
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_782 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_783 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2082,r13		! source line 2082
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2083,r13		! source line 2083
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_784 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_785
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_786
	.word	8
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	0
_Label_785:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_226_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	2676,r13		! source line 2676
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_790 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_790  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   _temp_791 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_791) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_792 = *_temp_793  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_791 = _temp_792  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   _temp_794 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_794) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_796) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_794 = _temp_795  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   _temp_797 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_797) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_799) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_797 = _temp_798  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_800
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_801
	.word	8
	.word	4
	.word	_Label_802
	.word	12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	_Label_804
	.word	-9
	.word	1
	.word	_Label_805
	.word	-20
	.word	4
	.word	_Label_806
	.word	-24
	.word	4
	.word	_Label_807
	.word	-10
	.word	1
	.word	_Label_808
	.word	-28
	.word	4
	.word	_Label_809
	.word	-32
	.word	4
	.word	_Label_810
	.word	-11
	.word	1
	.word	_Label_811
	.word	-36
	.word	4
	.word	_Label_812
	.word	-12
	.word	1
	.word	_Label_813
	.word	-40
	.word	4
	.word	_Label_814
	.word	-44
	.word	4
	.word	0
_Label_800:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_804:
	.byte	'C'
	.ascii	"_temp_798\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_807:
	.byte	'C'
	.ascii	"_temp_795\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_810:
	.byte	'C'
	.ascii	"_temp_792\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_812:
	.byte	'C'
	.ascii	"_temp_790\0"
	.align
_Label_813:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_814:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_225_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_printFCB,r1
	push	r1
	mov	3,r1
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	2686,r13		! source line 2686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_815 = *_temp_816  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_printFCB:
	.word	_sourceFileName
	.word	_Label_817
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_818
	.word	8
	.word	4
	.word	_Label_819
	.word	-12
	.word	4
	.word	_Label_820
	.word	-16
	.word	4
	.word	0
_Label_817:
	.ascii	"printFCB\0"
	.align
_Label_818:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_224_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_224_printOpen,r1
	push	r1
	mov	4,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	2691,r13		! source line 2691
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_821 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_822 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_823 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_224_printOpen:
	.word	_sourceFileName
	.word	_Label_824
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_825
	.word	8
	.word	4
	.word	_Label_826
	.word	-12
	.word	4
	.word	_Label_827
	.word	-16
	.word	4
	.word	_Label_828
	.word	-20
	.word	4
	.word	0
_Label_824:
	.ascii	"printOpen\0"
	.align
_Label_825:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_829
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_829:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_830
	.word	_sourceFileName
	.word	127		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_830:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_832		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_833 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_835
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_837
	.word	12
	.word	4
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	0
_Label_835:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_836:
	.ascii	"Pself\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_841		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_841
!	jmp	_Label_840
_Label_840:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_842 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_841:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_844		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_844
!	jmp	_Label_843
_Label_843:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_845 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_846 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_847 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_844:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_848
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_850
	.word	-12
	.word	4
	.word	_Label_851
	.word	-16
	.word	4
	.word	_Label_852
	.word	-20
	.word	4
	.word	_Label_853
	.word	-24
	.word	4
	.word	_Label_854
	.word	-28
	.word	4
	.word	_Label_855
	.word	-32
	.word	4
	.word	0
_Label_848:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_849:
	.ascii	"Pself\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_854:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_855:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_857		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_857
!	jmp	_Label_856
_Label_856:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_858 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_857:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_860		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_860
!	jmp	_Label_859
_Label_859:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_861 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_860:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_862
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_864
	.word	-12
	.word	4
	.word	_Label_865
	.word	-16
	.word	4
	.word	_Label_866
	.word	-20
	.word	4
	.word	0
_Label_862:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_863:
	.ascii	"Pself\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_866:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_867
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_867:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_868
	.word	_sourceFileName
	.word	140		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_868:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_870
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_872
	.word	-12
	.word	4
	.word	0
_Label_870:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_871:
	.ascii	"Pself\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_874		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_874
!	jmp	_Label_873
_Label_873:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_875 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_874:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_879		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_879
!   _temp_878 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_880
_Label_879:
!   _temp_878 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_880:
!   if _temp_878 then goto _Label_877 else goto _Label_876
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_876
	jmp	_Label_877
_Label_876:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_881
_Label_877:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_882 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_881:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_883
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_885
	.word	-16
	.word	4
	.word	_Label_886
	.word	-9
	.word	1
	.word	_Label_887
	.word	-20
	.word	4
	.word	_Label_888
	.word	-24
	.word	4
	.word	0
_Label_883:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_884:
	.ascii	"Pself\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_886:
	.byte	'C'
	.ascii	"_temp_878\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_890		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_890
!	jmp	_Label_889
_Label_889:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_891 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_890:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_892 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_894		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_894
!	jmp	_Label_893
_Label_893:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_895 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_896 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_897
_Label_894:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_897:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_898
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-24
	.word	4
	.word	_Label_904
	.word	-28
	.word	4
	.word	_Label_905
	.word	-32
	.word	4
	.word	0
_Label_898:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_908		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_908
!	jmp	_Label_907
_Label_907:
!   _temp_906 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_909
_Label_908:
!   _temp_906 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_909:
!   ReturnResult: _temp_906  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_910
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_911
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_912
	.word	-9
	.word	1
	.word	0
_Label_910:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_911:
	.ascii	"Pself\0"
	.align
_Label_912:
	.byte	'C'
	.ascii	"_temp_906\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_913
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_913:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_914
	.word	_sourceFileName
	.word	154		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_914:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_916
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_918
	.word	-12
	.word	4
	.word	0
_Label_916:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_917:
	.ascii	"Pself\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_921  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_921 then goto _Label_920 else goto _Label_919
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_919
	jmp	_Label_920
_Label_919:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_922 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_920:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_923 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_924
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_926
	.word	12
	.word	4
	.word	_Label_927
	.word	-16
	.word	4
	.word	_Label_928
	.word	-20
	.word	4
	.word	_Label_929
	.word	-9
	.word	1
	.word	_Label_930
	.word	-24
	.word	4
	.word	0
_Label_924:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_925:
	.ascii	"Pself\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_929:
	.byte	'C'
	.ascii	"_temp_921\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_933  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_933 then goto _Label_932 else goto _Label_931
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_931
	jmp	_Label_932
_Label_931:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_934 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_932:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_935 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_937		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_937
!	jmp	_Label_936
_Label_936:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_938 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_939 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_937:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_940
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-9
	.word	1
	.word	_Label_948
	.word	-32
	.word	4
	.word	_Label_949
	.word	-36
	.word	4
	.word	0
_Label_940:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_947:
	.byte	'C'
	.ascii	"_temp_933\0"
	.align
_Label_948:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_952  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_952 then goto _Label_951 else goto _Label_950
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_950
	jmp	_Label_951
_Label_950:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_953 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_951:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_954:
!	jmp	_Label_955
_Label_955:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_957 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_958
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_958
	jmp	_Label_959
_Label_958:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_956
! END IF...
_Label_959:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_960 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_961 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_954
_Label_956:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_962
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_964
	.word	12
	.word	4
	.word	_Label_965
	.word	-16
	.word	4
	.word	_Label_966
	.word	-20
	.word	4
	.word	_Label_967
	.word	-24
	.word	4
	.word	_Label_968
	.word	-28
	.word	4
	.word	_Label_969
	.word	-9
	.word	1
	.word	_Label_970
	.word	-32
	.word	4
	.word	_Label_971
	.word	-36
	.word	4
	.word	0
_Label_962:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_963:
	.ascii	"Pself\0"
	.align
_Label_964:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_969:
	.byte	'C'
	.ascii	"_temp_952\0"
	.align
_Label_970:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_971:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_972
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_972:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_973
	.word	_sourceFileName
	.word	167		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_973:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_975
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	-12
	.word	4
	.word	0
_Label_975:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	6,r1
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	453,r13		! source line 453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_979		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_980 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	457,r13		! source line 457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_979:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_984		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_984
!   _temp_983 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_985
_Label_984:
!   _temp_983 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_985:
!   if _temp_983 then goto _Label_982 else goto _Label_981
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_986
_Label_982:
! ELSE...
	mov	463,r13		! source line 463
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0SE",r10
!   _temp_987 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_986:
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_988
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_990
	.word	-16
	.word	4
	.word	_Label_991
	.word	-9
	.word	1
	.word	_Label_992
	.word	-20
	.word	4
	.word	_Label_993
	.word	-24
	.word	4
	.word	0
_Label_988:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_989:
	.ascii	"Pself\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_991:
	.byte	'C'
	.ascii	"_temp_983\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_993:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	471,r13		! source line 471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0IF",r10
!   if intIsZero (heldBy) then goto _Label_994
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_Label_994
	jmp	_Label_995
_Label_994:
! THEN...
	mov	476,r13		! source line 476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_996 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	476,r13		! source line 476
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
	mov	479,r13		! source line 479
	mov	"\0\0SE",r10
!   _temp_997 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_999		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_999
!	jmp	_Label_998
_Label_998:
! THEN...
	mov	481,r13		! source line 481
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1000 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1000 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0SE",r10
!   _temp_1001 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1002
_Label_999:
! ELSE...
	mov	485,r13		! source line 485
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1002:
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_1003
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1005
	.word	-12
	.word	4
	.word	_Label_1006
	.word	-16
	.word	4
	.word	_Label_1007
	.word	-20
	.word	4
	.word	_Label_1008
	.word	-24
	.word	4
	.word	_Label_1009
	.word	-28
	.word	4
	.word	_Label_1010
	.word	-32
	.word	4
	.word	0
_Label_1003:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1004:
	.ascii	"Pself\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1010:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1013		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1013
!	jmp	_Label_1012
_Label_1012:
!   _temp_1011 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1014
_Label_1013:
!   _temp_1011 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1014:
!   ReturnResult: _temp_1011  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_1015
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1017
	.word	-9
	.word	1
	.word	0
_Label_1015:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1016:
	.ascii	"Pself\0"
	.align
_Label_1017:
	.byte	'C'
	.ascii	"_temp_1011\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_1018
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_1018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1019
	.word	_sourceFileName
	.word	181		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1019:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	4,r1
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	504,r13		! source line 504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: x_sem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   x_sem = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   x_count = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
!   _temp_1021 = &x_sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0SE",r10
!   _temp_1022 = &x_sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Lock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_1023
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1025
	.word	-12
	.word	4
	.word	_Label_1026
	.word	-16
	.word	4
	.word	_Label_1027
	.word	-20
	.word	4
	.word	0
_Label_1023:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1024:
	.ascii	"Pself\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	4,r1
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	514,r13		! source line 514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   x_count = x_count + 1		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+24]
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if intIsZero (next_count) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1030 = *next_count  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_1030 <= 0 then goto _Label_1029		(int)
	load	[r14+-16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0SE",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1031
_Label_1029:
! ELSE...
	mov	523,r13		! source line 523
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1031:
! SEND STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   _temp_1032 = &x_sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Lock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   x_count = x_count - 1		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_1033
	.word	16		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	12
	.word	4
	.word	_Label_1036
	.word	16
	.word	4
	.word	_Label_1037
	.word	20
	.word	4
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	0
_Label_1033:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1036:
	.byte	'P'
	.ascii	"next\0"
	.align
_Label_1037:
	.byte	'P'
	.ascii	"next_count\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1040:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	7,r1
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	533,r13		! source line 533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	536,r13		! source line 536
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
!   if x_count <= 0 then goto _Label_1042		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1042
!	jmp	_Label_1041
_Label_1041:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   if intIsZero (next_count) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (next_count) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1044 = *next_count  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1043 = _temp_1044 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *next_count = _temp_1043  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
!   _temp_1045 = &x_sem
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0SE",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   if intIsZero (next_count) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (next_count) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1047 = *next_count  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   _temp_1046 = _temp_1047 - 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *next_count = _temp_1046  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+16],r2
	store	r1,[r2]
! END IF...
_Label_1042:
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_1048
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1049
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1050
	.word	12
	.word	4
	.word	_Label_1051
	.word	16
	.word	4
	.word	_Label_1052
	.word	-12
	.word	4
	.word	_Label_1053
	.word	-16
	.word	4
	.word	_Label_1054
	.word	-20
	.word	4
	.word	_Label_1055
	.word	-24
	.word	4
	.word	_Label_1056
	.word	-28
	.word	4
	.word	_Label_1057
	.word	-32
	.word	4
	.word	0
_Label_1048:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1049:
	.ascii	"Pself\0"
	.align
_Label_1050:
	.byte	'P'
	.ascii	"next\0"
	.align
_Label_1051:
	.byte	'P'
	.ascii	"next_count\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1058
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1058:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1059
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1059:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	556,r13		! source line 556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   _temp_1060 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1060 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   _temp_1061 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1061 [0 ] into _temp_1062
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1062 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   _temp_1063 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1063 [999 ] into _temp_1064
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1064 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   _temp_1065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1065 [999 ] into _temp_1066
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1066		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   _temp_1067 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1069 = &_temp_1068
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1069 = _temp_1069 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1071:
!   Data Move: *_temp_1069 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1069 = _temp_1069 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1070 = _temp_1070 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1070) then goto _Label_1071
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1071
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1072 = &_temp_1068
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3158
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3158:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1067 = *_temp_1072  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3159:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3159
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   _temp_1073 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1075 = &_temp_1074
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1075 = _temp_1075 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1077:
!   Data Move: *_temp_1075 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1075 = _temp_1075 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1076 = _temp_1076 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1076) then goto _Label_1077
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1077
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1078 = &_temp_1074
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3160
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3160:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1073 = *_temp_1078  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3161:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3161
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1079
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1080
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1081
	.word	12
	.word	4
	.word	_Label_1082
	.word	-12
	.word	4
	.word	_Label_1083
	.word	-16
	.word	4
	.word	_Label_1084
	.word	-20
	.word	4
	.word	_Label_1085
	.word	-84
	.word	64
	.word	_Label_1086
	.word	-88
	.word	4
	.word	_Label_1087
	.word	-92
	.word	4
	.word	_Label_1088
	.word	-96
	.word	4
	.word	_Label_1089
	.word	-100
	.word	4
	.word	_Label_1090
	.word	-156
	.word	56
	.word	_Label_1091
	.word	-160
	.word	4
	.word	_Label_1092
	.word	-164
	.word	4
	.word	_Label_1093
	.word	-168
	.word	4
	.word	_Label_1094
	.word	-172
	.word	4
	.word	_Label_1095
	.word	-176
	.word	4
	.word	_Label_1096
	.word	-180
	.word	4
	.word	_Label_1097
	.word	-184
	.word	4
	.word	_Label_1098
	.word	-188
	.word	4
	.word	0
_Label_1079:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1080:
	.ascii	"Pself\0"
	.align
_Label_1081:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	575,r13		! source line 575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1099  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1101 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1100  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1102
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1103
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1104
	.word	12
	.word	4
	.word	_Label_1105
	.word	16
	.word	4
	.word	_Label_1106
	.word	-12
	.word	4
	.word	_Label_1107
	.word	-16
	.word	4
	.word	_Label_1108
	.word	-20
	.word	4
	.word	_Label_1109
	.word	-24
	.word	4
	.word	_Label_1110
	.word	-28
	.word	4
	.word	0
_Label_1102:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1103:
	.ascii	"Pself\0"
	.align
_Label_1104:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1105:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1109:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1110:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	599,r13		! source line 599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1113 == _P_Kernel_currentThread then goto _Label_1112		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	616,r13		! source line 616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1114 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	616,r13		! source line 616
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1112:
! ASSIGNMENT STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
	mov	622,r13		! source line 622
	mov	"\0\0SE",r10
!   _temp_1115 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1117		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1117
!	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	627,r13		! source line 627
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1119		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	628,r13		! source line 628
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1120 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	628,r13		! source line 628
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1122 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1121  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1117:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1123
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1125
	.word	-12
	.word	4
	.word	_Label_1126
	.word	-16
	.word	4
	.word	_Label_1127
	.word	-20
	.word	4
	.word	_Label_1128
	.word	-24
	.word	4
	.word	_Label_1129
	.word	-28
	.word	4
	.word	_Label_1130
	.word	-32
	.word	4
	.word	_Label_1131
	.word	-36
	.word	4
	.word	_Label_1132
	.word	-40
	.word	4
	.word	_Label_1133
	.word	-44
	.word	4
	.word	0
_Label_1123:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1124:
	.ascii	"Pself\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1131:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1133:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	639,r13		! source line 639
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1135		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1135
!	jmp	_Label_1134
_Label_1134:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1136 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	652,r13		! source line 652
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1135:
! IF STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1139 == _P_Kernel_currentThread then goto _Label_1138		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1138
!	jmp	_Label_1137
_Label_1137:
! THEN...
	mov	656,r13		! source line 656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1140 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	656,r13		! source line 656
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1138:
! ASSIGNMENT STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0AS",r10
	mov	662,r13		! source line 662
	mov	"\0\0SE",r10
!   _temp_1141 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1142
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1142
	jmp	_Label_1143
_Label_1142:
! THEN...
	mov	664,r13		! source line 664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1144 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	664,r13		! source line 664
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1143:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1145
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1147
	.word	-12
	.word	4
	.word	_Label_1148
	.word	-16
	.word	4
	.word	_Label_1149
	.word	-20
	.word	4
	.word	_Label_1150
	.word	-24
	.word	4
	.word	_Label_1151
	.word	-28
	.word	4
	.word	_Label_1152
	.word	-32
	.word	4
	.word	0
_Label_1145:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1146:
	.ascii	"Pself\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1152:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	671,r13		! source line 671
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0IF",r10
!   _temp_1156 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1156 [0 ] into _temp_1157
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1155 = *_temp_1157  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1155 == 606348324 then goto _Label_1154		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1154
!	jmp	_Label_1153
_Label_1153:
! THEN...
	mov	678,r13		! source line 678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1158 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	678,r13		! source line 678
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1159
_Label_1154:
! ELSE...
	mov	679,r13		! source line 679
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0IF",r10
!   _temp_1163 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1163 [999 ] into _temp_1164
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1162 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1162 == 606348324 then goto _Label_1161		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1161
!	jmp	_Label_1160
_Label_1160:
! THEN...
	mov	680,r13		! source line 680
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1165 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	680,r13		! source line 680
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1161:
! END IF...
_Label_1159:
! RETURN STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1166
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	_Label_1173
	.word	-32
	.word	4
	.word	_Label_1174
	.word	-36
	.word	4
	.word	_Label_1175
	.word	-40
	.word	4
	.word	0
_Label_1166:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1167:
	.ascii	"Pself\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	686,r13		! source line 686
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1176 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1177 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1179 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1180 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1185 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1186 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1185  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1181:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1186 then goto _Label_1184		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1184
_Label_1182:
	mov	699,r13		! source line 699
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1187 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1188 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1189 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1191 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1191 [i ] into _temp_1192
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1190 = *_temp_1192  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1193 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1195 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1195 [i ] into _temp_1196
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1194 = *_temp_1196  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1197 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1183:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1181
! END FOR
_Label_1184:
! CALL STATEMENT...
!   _temp_1198 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-116]
!   _temp_1199 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1200 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-108]
!   _temp_1202 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1202 [0 ] into _temp_1203
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1201 = _temp_1203		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	710,r13		! source line 710
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1206
	cmp	r1,2
	be	_Label_1207
	cmp	r1,3
	be	_Label_1208
	cmp	r1,4
	be	_Label_1209
	cmp	r1,5
	be	_Label_1210
	jmp	_Label_1204
! CASE 1...
_Label_1206:
! CALL STATEMENT...
!   _temp_1211 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_1205
! CASE 2...
_Label_1207:
! CALL STATEMENT...
!   _temp_1212 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_1205
! CASE 3...
_Label_1208:
! CALL STATEMENT...
!   _temp_1213 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_1205
! CASE 4...
_Label_1209:
! CALL STATEMENT...
!   _temp_1214 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_1205
! CASE 5...
_Label_1210:
! CALL STATEMENT...
!   _temp_1215 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0BR",r10
	jmp	_Label_1205
! DEFAULT CASE...
_Label_1204:
! CALL STATEMENT...
!   _temp_1216 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	727,r13		! source line 727
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1205:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1218 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1223 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1224 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1223  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1219:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1224 then goto _Label_1222		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1222
_Label_1220:
	mov	733,r13		! source line 733
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1225 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1226 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1227 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1229 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1229 [i ] into _temp_1230
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1228 = *_temp_1230  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1231 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1233 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1233 [i ] into _temp_1234
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1232 = *_temp_1234  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1235 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1235  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1221:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1219
! END FOR
_Label_1222:
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1236
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1238
	.word	-12
	.word	4
	.word	_Label_1239
	.word	-16
	.word	4
	.word	_Label_1240
	.word	-20
	.word	4
	.word	_Label_1241
	.word	-24
	.word	4
	.word	_Label_1242
	.word	-28
	.word	4
	.word	_Label_1243
	.word	-32
	.word	4
	.word	_Label_1244
	.word	-36
	.word	4
	.word	_Label_1245
	.word	-40
	.word	4
	.word	_Label_1246
	.word	-44
	.word	4
	.word	_Label_1247
	.word	-48
	.word	4
	.word	_Label_1248
	.word	-52
	.word	4
	.word	_Label_1249
	.word	-56
	.word	4
	.word	_Label_1250
	.word	-60
	.word	4
	.word	_Label_1251
	.word	-64
	.word	4
	.word	_Label_1252
	.word	-68
	.word	4
	.word	_Label_1253
	.word	-72
	.word	4
	.word	_Label_1254
	.word	-76
	.word	4
	.word	_Label_1255
	.word	-80
	.word	4
	.word	_Label_1256
	.word	-84
	.word	4
	.word	_Label_1257
	.word	-88
	.word	4
	.word	_Label_1258
	.word	-92
	.word	4
	.word	_Label_1259
	.word	-96
	.word	4
	.word	_Label_1260
	.word	-100
	.word	4
	.word	_Label_1261
	.word	-104
	.word	4
	.word	_Label_1262
	.word	-108
	.word	4
	.word	_Label_1263
	.word	-112
	.word	4
	.word	_Label_1264
	.word	-116
	.word	4
	.word	_Label_1265
	.word	-120
	.word	4
	.word	_Label_1266
	.word	-124
	.word	4
	.word	_Label_1267
	.word	-128
	.word	4
	.word	_Label_1268
	.word	-132
	.word	4
	.word	_Label_1269
	.word	-136
	.word	4
	.word	_Label_1270
	.word	-140
	.word	4
	.word	_Label_1271
	.word	-144
	.word	4
	.word	_Label_1272
	.word	-148
	.word	4
	.word	_Label_1273
	.word	-152
	.word	4
	.word	_Label_1274
	.word	-156
	.word	4
	.word	_Label_1275
	.word	-160
	.word	4
	.word	_Label_1276
	.word	-164
	.word	4
	.word	_Label_1277
	.word	-168
	.word	4
	.word	_Label_1278
	.word	-172
	.word	4
	.word	_Label_1279
	.word	-176
	.word	4
	.word	_Label_1280
	.word	-180
	.word	4
	.word	_Label_1281
	.word	-184
	.word	4
	.word	_Label_1282
	.word	-188
	.word	4
	.word	_Label_1283
	.word	-192
	.word	4
	.word	_Label_1284
	.word	-196
	.word	4
	.word	0
_Label_1236:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1237:
	.ascii	"Pself\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1283:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1284:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1285
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1285:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1286
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1286:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	797,r13		! source line 797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1287 = _StringConst_122
	set	_StringConst_122,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_1290 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_1291 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45892,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   _temp_1292 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1294 = &_temp_1293
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_1294 = _temp_1294 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1296 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_3168:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3168
!   _temp_1296 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_1298:
!   Data Move: *_temp_1294 = _temp_1296  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_3169:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3169
!   _temp_1294 = _temp_1294 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_1295 = _temp_1295 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_1295) then goto _Label_1298
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_1298
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_1299 = &_temp_1293
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3170
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3170:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1292 = *_temp_1299  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3171:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3171
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1305 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1306 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1305  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1301:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1306 then goto _Label_1304		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1304
_Label_1302:
	mov	825,r13		! source line 825
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0SE",r10
!   _temp_1307 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   _temp_1308 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1308 [i ] into _temp_1309
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1307  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0AS",r10
!   _temp_1310 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1310 [i ] into _temp_1311
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1312 = _temp_1311 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1312 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
!   _temp_1314 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1314 [i ] into _temp_1315
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1313 = _temp_1315		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1316 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1313  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1303:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1301
! END FOR
_Label_1304:
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1317
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1319
	.word	-12
	.word	4
	.word	_Label_1320
	.word	-16
	.word	4
	.word	_Label_1321
	.word	-20
	.word	4
	.word	_Label_1322
	.word	-24
	.word	4
	.word	_Label_1323
	.word	-28
	.word	4
	.word	_Label_1324
	.word	-32
	.word	4
	.word	_Label_1325
	.word	-36
	.word	4
	.word	_Label_1326
	.word	-40
	.word	4
	.word	_Label_1327
	.word	-44
	.word	4
	.word	_Label_1328
	.word	-48
	.word	4
	.word	_Label_1329
	.word	-52
	.word	4
	.word	_Label_1330
	.word	-56
	.word	4
	.word	_Label_1331
	.word	-60
	.word	4
	.word	_Label_1332
	.word	-64
	.word	4
	.word	_Label_1333
	.word	-68
	.word	4
	.word	_Label_1334
	.word	-4232
	.word	4164
	.word	_Label_1335
	.word	-4236
	.word	4
	.word	_Label_1336
	.word	-4240
	.word	4
	.word	_Label_1337
	.word	-45884
	.word	41644
	.word	_Label_1338
	.word	-45888
	.word	4
	.word	_Label_1339
	.word	-45892
	.word	4
	.word	_Label_1340
	.word	-45896
	.word	4
	.word	_Label_1341
	.word	-45900
	.word	4
	.word	_Label_1342
	.word	-45904
	.word	4
	.word	_Label_1343
	.word	-45908
	.word	4
	.word	_Label_1344
	.word	-45912
	.word	4
	.word	0
_Label_1317:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1318:
	.ascii	"Pself\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1344:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	835,r13		! source line 835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1345 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1350 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1351 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1350  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1346:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1351 then goto _Label_1349		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1349
_Label_1347:
	mov	844,r13		! source line 844
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1352 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1353 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1355 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1355 [i ] into _temp_1356
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1354 = _temp_1356		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CA",r10
	call	_function_230_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1348:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1346
! END FOR
_Label_1349:
! CALL STATEMENT...
!   _temp_1357 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1357  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_1358 = _function_229_PrintObjectAddr
	set	_function_229_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1359 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1358  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1360
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1362
	.word	-12
	.word	4
	.word	_Label_1363
	.word	-16
	.word	4
	.word	_Label_1364
	.word	-20
	.word	4
	.word	_Label_1365
	.word	-24
	.word	4
	.word	_Label_1366
	.word	-28
	.word	4
	.word	_Label_1367
	.word	-32
	.word	4
	.word	_Label_1368
	.word	-36
	.word	4
	.word	_Label_1369
	.word	-40
	.word	4
	.word	_Label_1370
	.word	-44
	.word	4
	.word	_Label_1371
	.word	-48
	.word	4
	.word	_Label_1372
	.word	-52
	.word	4
	.word	_Label_1373
	.word	-56
	.word	4
	.word	_Label_1374
	.word	-60
	.word	4
	.word	0
_Label_1360:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1361:
	.ascii	"Pself\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1374:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	858,r13		! source line 858
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_1375 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0WH",r10
_Label_1376:
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_1379 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1377 else goto _Label_1378
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1378
	jmp	_Label_1377
_Label_1377:
	mov	868,r13		! source line 868
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_1380 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1381 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1380  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1376
_Label_1378:
! ASSIGNMENT STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0AS",r10
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_1382 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1383 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0SE",r10
!   _temp_1384 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1385
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1386
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1387
	.word	-12
	.word	4
	.word	_Label_1388
	.word	-16
	.word	4
	.word	_Label_1389
	.word	-20
	.word	4
	.word	_Label_1390
	.word	-24
	.word	4
	.word	_Label_1391
	.word	-28
	.word	4
	.word	_Label_1392
	.word	-32
	.word	4
	.word	_Label_1393
	.word	-36
	.word	4
	.word	_Label_1394
	.word	-40
	.word	4
	.word	0
_Label_1385:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1386:
	.ascii	"Pself\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1394:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	897,r13		! source line 897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1395 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1396 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1397 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1398 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1399 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1398  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1400 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1401
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1403
	.word	12
	.word	4
	.word	_Label_1404
	.word	-12
	.word	4
	.word	_Label_1405
	.word	-16
	.word	4
	.word	_Label_1406
	.word	-20
	.word	4
	.word	_Label_1407
	.word	-24
	.word	4
	.word	_Label_1408
	.word	-28
	.word	4
	.word	_Label_1409
	.word	-32
	.word	4
	.word	0
_Label_1401:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1402:
	.ascii	"Pself\0"
	.align
_Label_1403:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1410
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1410:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1411
	.word	_sourceFileName
	.word	248		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1411:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	925,r13		! source line 925
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3176:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3176
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1413 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1414
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1415
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1416
	.word	-12
	.word	4
	.word	_Label_1417
	.word	-16
	.word	4
	.word	0
_Label_1414:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1415:
	.ascii	"Pself\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1418) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_1419 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1420 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CA",r10
	call	_function_230_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1421
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1422
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1423
	.word	-12
	.word	4
	.word	_Label_1424
	.word	-16
	.word	4
	.word	_Label_1425
	.word	-20
	.word	4
	.word	0
_Label_1421:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1422:
	.ascii	"Pself\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3178:
	push	r0
	sub	r1,1,r1
	bne	_Label_3178
	mov	962,r13		! source line 962
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1426 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	967,r13		! source line 967
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1428 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1429 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	970,r13		! source line 970
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1431		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1431
!	jmp	_Label_1430
_Label_1430:
! THEN...
	mov	972,r13		! source line 972
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1432 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1433
_Label_1431:
! ELSE...
	mov	973,r13		! source line 973
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1435		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1435
!	jmp	_Label_1434
_Label_1434:
! THEN...
	mov	974,r13		! source line 974
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1436 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1436  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1437
_Label_1435:
! ELSE...
	mov	975,r13		! source line 975
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1439		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1439
!	jmp	_Label_1438
_Label_1438:
! THEN...
	mov	976,r13		! source line 976
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1440 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1441
_Label_1439:
! ELSE...
	mov	978,r13		! source line 978
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1442 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	978,r13		! source line 978
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1441:
! END IF...
_Label_1437:
! END IF...
_Label_1433:
! CALL STATEMENT...
!   _temp_1443 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	980,r13		! source line 980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1444 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1445
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1447
	.word	-12
	.word	4
	.word	_Label_1448
	.word	-16
	.word	4
	.word	_Label_1449
	.word	-20
	.word	4
	.word	_Label_1450
	.word	-24
	.word	4
	.word	_Label_1451
	.word	-28
	.word	4
	.word	_Label_1452
	.word	-32
	.word	4
	.word	_Label_1453
	.word	-36
	.word	4
	.word	_Label_1454
	.word	-40
	.word	4
	.word	_Label_1455
	.word	-44
	.word	4
	.word	_Label_1456
	.word	-48
	.word	4
	.word	0
_Label_1445:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1446:
	.ascii	"Pself\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1457
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1457:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1458
	.word	_sourceFileName
	.word	268		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1458:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	995,r13		! source line 995
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1462 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_1463 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1452]
!   Send message Init
	load	[r14+-1452],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1464 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   _temp_1465 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1444]
!   NEW ARRAY Constructor...
!   _temp_1467 = &_temp_1466
	add	r14,-1440,r1
	store	r1,[r14+-196]
!   _temp_1467 = _temp_1467 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1469 = zeros  (sizeInBytes=124)
	add	r14,-188,r4
	mov	31,r3
_Label_3180:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3180
!   _temp_1469 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-188]
	mov	10,r1
	store	r1,[r14+-192]
_Label_1471:
!   Data Move: *_temp_1467 = _temp_1469  (sizeInBytes=124)
	add	r14,-188,r5
	load	[r14+-196],r4
	mov	31,r3
_Label_3181:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3181
!   _temp_1467 = _temp_1467 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   _temp_1468 = _temp_1468 + -1
	load	[r14+-192],r1
	add	r1,-1,r1
	store	r1,[r14+-192]
!   if intNotZero (_temp_1468) then goto _Label_1471
	load	[r14+-192],r1
	cmp	r1,r0
	bne	_Label_1471
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1440]
!   _temp_1472 = &_temp_1466
	add	r14,-1440,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1444],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3182
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3182:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1465 = *_temp_1472  (sizeInBytes=1244)
	load	[r14+-60],r5
	load	[r14+-1444],r4
	mov	311,r3
_Label_3183:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3183
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1478 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1479 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1478  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1474:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1479 then goto _Label_1477		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1477
_Label_1475:
	mov	1016,r13		! source line 1016
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_1480 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1480 [i ] into _temp_1481
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0AS",r10
!   _temp_1482 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1482 [i ] into _temp_1483
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1484 = _temp_1483 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1484 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_1486 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1486 [i ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1485 = _temp_1487		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1488 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1485  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1476:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1474
! END FOR
_Label_1477:
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1489
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	_Label_1497
	.word	-36
	.word	4
	.word	_Label_1498
	.word	-40
	.word	4
	.word	_Label_1499
	.word	-44
	.word	4
	.word	_Label_1500
	.word	-48
	.word	4
	.word	_Label_1501
	.word	-52
	.word	4
	.word	_Label_1502
	.word	-56
	.word	4
	.word	_Label_1503
	.word	-60
	.word	4
	.word	_Label_1504
	.word	-64
	.word	4
	.word	_Label_1505
	.word	-188
	.word	124
	.word	_Label_1506
	.word	-192
	.word	4
	.word	_Label_1507
	.word	-196
	.word	4
	.word	_Label_1508
	.word	-1440
	.word	1244
	.word	_Label_1509
	.word	-1444
	.word	4
	.word	_Label_1510
	.word	-1448
	.word	4
	.word	_Label_1511
	.word	-1452
	.word	4
	.word	_Label_1512
	.word	-1456
	.word	4
	.word	_Label_1513
	.word	-1460
	.word	4
	.word	_Label_1514
	.word	-1464
	.word	4
	.word	_Label_1515
	.word	-1468
	.word	4
	.word	_Label_1516
	.word	-1472
	.word	4
	.word	0
_Label_1489:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1516:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1517 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1522 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1523 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1522  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1518:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1523 then goto _Label_1521		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1521
_Label_1519:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1524 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1525 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1526 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1526 [i ] into _temp_1527
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1520:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1518
! END FOR
_Label_1521:
! CALL STATEMENT...
!   _temp_1528 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_1529 = _function_229_PrintObjectAddr
	set	_function_229_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1530 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1529  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1531
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	-12
	.word	4
	.word	_Label_1534
	.word	-16
	.word	4
	.word	_Label_1535
	.word	-20
	.word	4
	.word	_Label_1536
	.word	-24
	.word	4
	.word	_Label_1537
	.word	-28
	.word	4
	.word	_Label_1538
	.word	-32
	.word	4
	.word	_Label_1539
	.word	-36
	.word	4
	.word	_Label_1540
	.word	-40
	.word	4
	.word	_Label_1541
	.word	-44
	.word	4
	.word	_Label_1542
	.word	-48
	.word	4
	.word	_Label_1543
	.word	-52
	.word	4
	.word	_Label_1544
	.word	-56
	.word	4
	.word	0
_Label_1531:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1543:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1544:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	1049,r13		! source line 1049
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1545 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1545  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1057,r13		! source line 1057
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1550 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1551 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1550  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1546:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1551 then goto _Label_1549		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1549
_Label_1547:
	mov	1058,r13		! source line 1058
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1552 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1553 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1553 [i ] into _temp_1554
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1548:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1546
! END FOR
_Label_1549:
! CALL STATEMENT...
!   _temp_1555 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1556 = _function_229_PrintObjectAddr
	set	_function_229_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1557 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1556  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1558
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	-12
	.word	4
	.word	_Label_1561
	.word	-16
	.word	4
	.word	_Label_1562
	.word	-20
	.word	4
	.word	_Label_1563
	.word	-24
	.word	4
	.word	_Label_1564
	.word	-28
	.word	4
	.word	_Label_1565
	.word	-32
	.word	4
	.word	_Label_1566
	.word	-36
	.word	4
	.word	_Label_1567
	.word	-40
	.word	4
	.word	_Label_1568
	.word	-44
	.word	4
	.word	_Label_1569
	.word	-48
	.word	4
	.word	_Label_1570
	.word	-52
	.word	4
	.word	0
_Label_1558:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1569:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	1071,r13		! source line 1071
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1571 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0WH",r10
_Label_1572:
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1575 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1573 else goto _Label_1574
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1574
	jmp	_Label_1573
_Label_1573:
	mov	1082,r13		! source line 1082
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1576 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1577 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1576  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1572
_Label_1574:
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_1578 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1579 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1579 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1580 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1580 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1581 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1582
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	-12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	_Label_1586
	.word	-20
	.word	4
	.word	_Label_1587
	.word	-24
	.word	4
	.word	_Label_1588
	.word	-28
	.word	4
	.word	_Label_1589
	.word	-32
	.word	4
	.word	_Label_1590
	.word	-36
	.word	4
	.word	_Label_1591
	.word	-40
	.word	4
	.word	_Label_1592
	.word	-44
	.word	4
	.word	0
_Label_1582:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1592:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1593 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1594 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1595 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1595 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_1596 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1597 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1596  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1598 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1599
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1601
	.word	12
	.word	4
	.word	_Label_1602
	.word	-12
	.word	4
	.word	_Label_1603
	.word	-16
	.word	4
	.word	_Label_1604
	.word	-20
	.word	4
	.word	_Label_1605
	.word	-24
	.word	4
	.word	_Label_1606
	.word	-28
	.word	4
	.word	_Label_1607
	.word	-32
	.word	4
	.word	0
_Label_1599:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1600:
	.ascii	"Pself\0"
	.align
_Label_1601:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1608
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1608:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1609
	.word	_sourceFileName
	.word	291		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1609:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	1194,r13		! source line 1194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1610 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1610  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_1612 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_1614 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_1616 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1621 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1622 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1621  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1617:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1622 then goto _Label_1620		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1620
_Label_1618:
	mov	1213,r13		! source line 1213
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1625 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1625) then goto _Label_1624
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	1217,r13		! source line 1217
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1626 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1217,r13		! source line 1217
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1624:
!   Increment the FOR-LOOP index variable and jump back
_Label_1619:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1617
! END FOR
_Label_1620:
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1627
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1629
	.word	-12
	.word	4
	.word	_Label_1630
	.word	-16
	.word	4
	.word	_Label_1631
	.word	-20
	.word	4
	.word	_Label_1632
	.word	-24
	.word	4
	.word	_Label_1633
	.word	-28
	.word	4
	.word	_Label_1634
	.word	-32
	.word	4
	.word	_Label_1635
	.word	-36
	.word	4
	.word	_Label_1636
	.word	-40
	.word	4
	.word	_Label_1637
	.word	-44
	.word	4
	.word	_Label_1638
	.word	-48
	.word	4
	.word	_Label_1639
	.word	-52
	.word	4
	.word	_Label_1640
	.word	-56
	.word	4
	.word	0
_Label_1627:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1628:
	.ascii	"Pself\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
!   _temp_1641 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1642 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1643 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1644 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1645 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1646 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1647
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-32
	.word	4
	.word	0
_Label_1647:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_1655 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0WH",r10
_Label_1656:
!   if numberFreeFrames >= 1 then goto _Label_1658		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1658
!	jmp	_Label_1657
_Label_1657:
	mov	1249,r13		! source line 1249
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_1659 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1660 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1659  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1656
_Label_1658:
! ASSIGNMENT STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0AS",r10
	mov	1254,r13		! source line 1254
	mov	"\0\0SE",r10
!   _temp_1661 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1662 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0AS",r10
!   _temp_1663 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1663		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1664
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	-12
	.word	4
	.word	_Label_1667
	.word	-16
	.word	4
	.word	_Label_1668
	.word	-20
	.word	4
	.word	_Label_1669
	.word	-24
	.word	4
	.word	_Label_1670
	.word	-28
	.word	4
	.word	_Label_1671
	.word	-32
	.word	4
	.word	_Label_1672
	.word	-36
	.word	4
	.word	_Label_1673
	.word	-40
	.word	4
	.word	0
_Label_1664:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3191:
	push	r0
	sub	r1,1,r1
	bne	_Label_3191
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
!   _temp_1674 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0WH",r10
_Label_1675:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1677		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1677
!	jmp	_Label_1676
_Label_1676:
	mov	1277,r13		! source line 1277
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
!   _temp_1678 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1679 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1678  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1675
_Label_1677:
! FOR STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1684 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1685 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1684  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1680:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1685 then goto _Label_1683		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1683
_Label_1681:
	mov	1281,r13		! source line 1281
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_1686 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=idx  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0AS",r10
!   _temp_1687 = idx * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   addr = 1048576 + _temp_1687		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=addr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1682:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1680
! END FOR
_Label_1683:
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1688 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_1689 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1690
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	16
	.word	4
	.word	_Label_1694
	.word	-12
	.word	4
	.word	_Label_1695
	.word	-16
	.word	4
	.word	_Label_1696
	.word	-20
	.word	4
	.word	_Label_1697
	.word	-24
	.word	4
	.word	_Label_1698
	.word	-28
	.word	4
	.word	_Label_1699
	.word	-32
	.word	4
	.word	_Label_1700
	.word	-36
	.word	4
	.word	_Label_1701
	.word	-40
	.word	4
	.word	_Label_1702
	.word	-44
	.word	4
	.word	_Label_1703
	.word	-48
	.word	4
	.word	_Label_1704
	.word	-52
	.word	4
	.word	_Label_1705
	.word	-56
	.word	4
	.word	0
_Label_1690:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1704:
	.byte	'I'
	.ascii	"idx\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"addr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	18,r1
_Label_3192:
	push	r0
	sub	r1,1,r1
	bne	_Label_3192
	mov	1295,r13		! source line 1295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
!   _temp_1706 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1711 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1714 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1713 = *_temp_1714  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1712 = _temp_1713 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1711  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1712 then goto _Label_1710		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1710
_Label_1708:
	mov	1302,r13		! source line 1302
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0AS",r10
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   _temp_1715 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   base = _temp_1715 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0SE",r10
!   _temp_1716 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=base  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1709:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1707
! END FOR
_Label_1710:
! ASSIGNMENT STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1718 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1717 = *_temp_1718  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1717		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1719 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1719 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1720 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1721 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1720  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0SE",r10
!   _temp_1722 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1723
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1725
	.word	12
	.word	4
	.word	_Label_1726
	.word	-12
	.word	4
	.word	_Label_1727
	.word	-16
	.word	4
	.word	_Label_1728
	.word	-20
	.word	4
	.word	_Label_1729
	.word	-24
	.word	4
	.word	_Label_1730
	.word	-28
	.word	4
	.word	_Label_1731
	.word	-32
	.word	4
	.word	_Label_1732
	.word	-36
	.word	4
	.word	_Label_1733
	.word	-40
	.word	4
	.word	_Label_1734
	.word	-44
	.word	4
	.word	_Label_1735
	.word	-48
	.word	4
	.word	_Label_1736
	.word	-52
	.word	4
	.word	_Label_1737
	.word	-56
	.word	4
	.word	_Label_1738
	.word	-60
	.word	4
	.word	_Label_1739
	.word	-64
	.word	4
	.word	_Label_1740
	.word	-68
	.word	4
	.word	_Label_1741
	.word	-72
	.word	4
	.word	0
_Label_1723:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1724:
	.ascii	"Pself\0"
	.align
_Label_1725:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1739:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"base\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"addr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1742
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1742:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1743
	.word	_sourceFileName
	.word	310		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1743:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3193:
	push	r0
	sub	r1,1,r1
	bne	_Label_3193
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_1744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1746 = &_temp_1745
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1746 = _temp_1746 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1748:
!   Data Move: *_temp_1746 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1746 = _temp_1746 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1747 = _temp_1747 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1747) then goto _Label_1748
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1748
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1749 = &_temp_1745
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3194
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3194:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1744 = *_temp_1749  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3195:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3195
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1750
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	-12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-104
	.word	84
	.word	_Label_1756
	.word	-108
	.word	4
	.word	0
_Label_1750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3196:
	push	r0
	sub	r1,1,r1
	bne	_Label_3196
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1757 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1758 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1763 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1764 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1763  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1759:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1764 then goto _Label_1762		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1762
_Label_1760:
	mov	1342,r13		! source line 1342
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1765 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1767 [i ] into _temp_1768
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1766 = _temp_1768		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1766  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1344,r13		! source line 1344
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1769 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1345,r13		! source line 1345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1771 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1771 [i ] into _temp_1772
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1770 = *_temp_1772  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1773 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1347,r13		! source line 1347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1774 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1775 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1777) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1776  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1776  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1778 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1351,r13		! source line 1351
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0IF",r10
	mov	1352,r13		! source line 1352
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1782) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1781  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1781) then goto _Label_1780
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1780
!	jmp	_Label_1779
_Label_1779:
! THEN...
	mov	1353,r13		! source line 1353
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1784) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1783  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1353,r13		! source line 1353
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1785
_Label_1780:
! ELSE...
	mov	1355,r13		! source line 1355
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1786 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1786  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1785:
! CALL STATEMENT...
!   _temp_1787 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0IF",r10
	mov	1358,r13		! source line 1358
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1790) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1788 else goto _Label_1789
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1789
	jmp	_Label_1788
_Label_1788:
! THEN...
	mov	1359,r13		! source line 1359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1791 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1792
_Label_1789:
! ELSE...
	mov	1361,r13		! source line 1361
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1793 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1792:
! CALL STATEMENT...
!   _temp_1794 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0IF",r10
	mov	1364,r13		! source line 1364
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1797) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1795 else goto _Label_1796
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1796
	jmp	_Label_1795
_Label_1795:
! THEN...
	mov	1365,r13		! source line 1365
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1798 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1365,r13		! source line 1365
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1799
_Label_1796:
! ELSE...
	mov	1367,r13		! source line 1367
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1800 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1800  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1367,r13		! source line 1367
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1799:
! CALL STATEMENT...
!   _temp_1801 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1369,r13		! source line 1369
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0IF",r10
	mov	1370,r13		! source line 1370
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1804) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1802 else goto _Label_1803
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1803
	jmp	_Label_1802
_Label_1802:
! THEN...
	mov	1371,r13		! source line 1371
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1805 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1371,r13		! source line 1371
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1806
_Label_1803:
! ELSE...
	mov	1373,r13		! source line 1373
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1807 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1373,r13		! source line 1373
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1806:
! CALL STATEMENT...
!   _temp_1808 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0IF",r10
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1811) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1809 else goto _Label_1810
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1810
	jmp	_Label_1809
_Label_1809:
! THEN...
	mov	1377,r13		! source line 1377
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1812 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1813
_Label_1810:
! ELSE...
	mov	1379,r13		! source line 1379
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1814 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1813:
! CALL STATEMENT...
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1761:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1759
! END FOR
_Label_1762:
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1815
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	-12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-32
	.word	4
	.word	_Label_1823
	.word	-36
	.word	4
	.word	_Label_1824
	.word	-40
	.word	4
	.word	_Label_1825
	.word	-44
	.word	4
	.word	_Label_1826
	.word	-48
	.word	4
	.word	_Label_1827
	.word	-52
	.word	4
	.word	_Label_1828
	.word	-56
	.word	4
	.word	_Label_1829
	.word	-60
	.word	4
	.word	_Label_1830
	.word	-64
	.word	4
	.word	_Label_1831
	.word	-68
	.word	4
	.word	_Label_1832
	.word	-72
	.word	4
	.word	_Label_1833
	.word	-76
	.word	4
	.word	_Label_1834
	.word	-80
	.word	4
	.word	_Label_1835
	.word	-84
	.word	4
	.word	_Label_1836
	.word	-88
	.word	4
	.word	_Label_1837
	.word	-92
	.word	4
	.word	_Label_1838
	.word	-96
	.word	4
	.word	_Label_1839
	.word	-100
	.word	4
	.word	_Label_1840
	.word	-104
	.word	4
	.word	_Label_1841
	.word	-108
	.word	4
	.word	_Label_1842
	.word	-112
	.word	4
	.word	_Label_1843
	.word	-116
	.word	4
	.word	_Label_1844
	.word	-120
	.word	4
	.word	_Label_1845
	.word	-124
	.word	4
	.word	_Label_1846
	.word	-128
	.word	4
	.word	_Label_1847
	.word	-132
	.word	4
	.word	_Label_1848
	.word	-136
	.word	4
	.word	_Label_1849
	.word	-140
	.word	4
	.word	_Label_1850
	.word	-144
	.word	4
	.word	_Label_1851
	.word	-148
	.word	4
	.word	_Label_1852
	.word	-152
	.word	4
	.word	_Label_1853
	.word	-156
	.word	4
	.word	_Label_1854
	.word	-160
	.word	4
	.word	_Label_1855
	.word	-164
	.word	4
	.word	_Label_1856
	.word	-168
	.word	4
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	1387,r13		! source line 1387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
!   _temp_1859 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1859 [entry ] into _temp_1860
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1858 = *_temp_1860  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1857 = _temp_1858 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1857  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1861
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1863
	.word	12
	.word	4
	.word	_Label_1864
	.word	-12
	.word	4
	.word	_Label_1865
	.word	-16
	.word	4
	.word	_Label_1866
	.word	-20
	.word	4
	.word	_Label_1867
	.word	-24
	.word	4
	.word	0
_Label_1861:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1862:
	.ascii	"Pself\0"
	.align
_Label_1863:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
!   _temp_1870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1870 [entry ] into _temp_1871
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1869 = *_temp_1871  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1868 = _temp_1869 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1868  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1872
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1874
	.word	12
	.word	4
	.word	_Label_1875
	.word	-12
	.word	4
	.word	_Label_1876
	.word	-16
	.word	4
	.word	_Label_1877
	.word	-20
	.word	4
	.word	_Label_1878
	.word	-24
	.word	4
	.word	0
_Label_1872:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1873:
	.ascii	"Pself\0"
	.align
_Label_1874:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0AS",r10
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1879 [entry ] into _temp_1880
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1884 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1884 [entry ] into _temp_1885
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1883 = *_temp_1885  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1882 = _temp_1883 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1881 = _temp_1882 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1880 = _temp_1881  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1886
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1888
	.word	12
	.word	4
	.word	_Label_1889
	.word	16
	.word	4
	.word	_Label_1890
	.word	-12
	.word	4
	.word	_Label_1891
	.word	-16
	.word	4
	.word	_Label_1892
	.word	-20
	.word	4
	.word	_Label_1893
	.word	-24
	.word	4
	.word	_Label_1894
	.word	-28
	.word	4
	.word	_Label_1895
	.word	-32
	.word	4
	.word	_Label_1896
	.word	-36
	.word	4
	.word	0
_Label_1886:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1887:
	.ascii	"Pself\0"
	.align
_Label_1888:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	1416,r13		! source line 1416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
!   _temp_1900 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1900 [entry ] into _temp_1901
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1899 = *_temp_1901  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1898 = _temp_1899 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1898) then goto _Label_1902
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1902
!   _temp_1897 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1903
_Label_1902:
!   _temp_1897 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1903:
!   ReturnResult: _temp_1897  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1904
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1906
	.word	12
	.word	4
	.word	_Label_1907
	.word	-16
	.word	4
	.word	_Label_1908
	.word	-20
	.word	4
	.word	_Label_1909
	.word	-24
	.word	4
	.word	_Label_1910
	.word	-28
	.word	4
	.word	_Label_1911
	.word	-9
	.word	1
	.word	0
_Label_1904:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1905:
	.ascii	"Pself\0"
	.align
_Label_1906:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1911:
	.byte	'C'
	.ascii	"_temp_1897\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   _temp_1915 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1915 [entry ] into _temp_1916
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1914 = *_temp_1916  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1913 = _temp_1914 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1913) then goto _Label_1917
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1917
!   _temp_1912 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1918
_Label_1917:
!   _temp_1912 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1918:
!   ReturnResult: _temp_1912  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1919
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1921
	.word	12
	.word	4
	.word	_Label_1922
	.word	-16
	.word	4
	.word	_Label_1923
	.word	-20
	.word	4
	.word	_Label_1924
	.word	-24
	.word	4
	.word	_Label_1925
	.word	-28
	.word	4
	.word	_Label_1926
	.word	-9
	.word	1
	.word	0
_Label_1919:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1920:
	.ascii	"Pself\0"
	.align
_Label_1921:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1926:
	.byte	'C'
	.ascii	"_temp_1912\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   _temp_1930 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1930 [entry ] into _temp_1931
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1929 = *_temp_1931  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1928 = _temp_1929 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1928) then goto _Label_1932
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1932
!   _temp_1927 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1933
_Label_1932:
!   _temp_1927 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1933:
!   ReturnResult: _temp_1927  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1934
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1936
	.word	12
	.word	4
	.word	_Label_1937
	.word	-16
	.word	4
	.word	_Label_1938
	.word	-20
	.word	4
	.word	_Label_1939
	.word	-24
	.word	4
	.word	_Label_1940
	.word	-28
	.word	4
	.word	_Label_1941
	.word	-9
	.word	1
	.word	0
_Label_1934:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1935:
	.ascii	"Pself\0"
	.align
_Label_1936:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1941:
	.byte	'C'
	.ascii	"_temp_1927\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	1443,r13		! source line 1443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   _temp_1945 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1945 [entry ] into _temp_1946
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1944 = *_temp_1946  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1943 = _temp_1944 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1943) then goto _Label_1947
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1947
!   _temp_1942 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1948
_Label_1947:
!   _temp_1942 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1948:
!   ReturnResult: _temp_1942  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1949
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1951
	.word	12
	.word	4
	.word	_Label_1952
	.word	-16
	.word	4
	.word	_Label_1953
	.word	-20
	.word	4
	.word	_Label_1954
	.word	-24
	.word	4
	.word	_Label_1955
	.word	-28
	.word	4
	.word	_Label_1956
	.word	-9
	.word	1
	.word	0
_Label_1949:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1950:
	.ascii	"Pself\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1956:
	.byte	'C'
	.ascii	"_temp_1942\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	1452,r13		! source line 1452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   _temp_1957 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1957 [entry ] into _temp_1958
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1961 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1961 [entry ] into _temp_1962
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1960 = *_temp_1962  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1959 = _temp_1960 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1958 = _temp_1959  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1963
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1965
	.word	12
	.word	4
	.word	_Label_1966
	.word	-12
	.word	4
	.word	_Label_1967
	.word	-16
	.word	4
	.word	_Label_1968
	.word	-20
	.word	4
	.word	_Label_1969
	.word	-24
	.word	4
	.word	_Label_1970
	.word	-28
	.word	4
	.word	_Label_1971
	.word	-32
	.word	4
	.word	0
_Label_1963:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1964:
	.ascii	"Pself\0"
	.align
_Label_1965:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   _temp_1972 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1972 [entry ] into _temp_1973
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1976 [entry ] into _temp_1977
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1975 = *_temp_1977  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1974 = _temp_1975 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1973 = _temp_1974  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1978
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1980
	.word	12
	.word	4
	.word	_Label_1981
	.word	-12
	.word	4
	.word	_Label_1982
	.word	-16
	.word	4
	.word	_Label_1983
	.word	-20
	.word	4
	.word	_Label_1984
	.word	-24
	.word	4
	.word	_Label_1985
	.word	-28
	.word	4
	.word	_Label_1986
	.word	-32
	.word	4
	.word	0
_Label_1978:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1979:
	.ascii	"Pself\0"
	.align
_Label_1980:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1470,r13		! source line 1470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   _temp_1987 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1987 [entry ] into _temp_1988
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1991 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1991 [entry ] into _temp_1992
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1990 = *_temp_1992  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1989 = _temp_1990 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1988 = _temp_1989  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1993
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1995
	.word	12
	.word	4
	.word	_Label_1996
	.word	-12
	.word	4
	.word	_Label_1997
	.word	-16
	.word	4
	.word	_Label_1998
	.word	-20
	.word	4
	.word	_Label_1999
	.word	-24
	.word	4
	.word	_Label_2000
	.word	-28
	.word	4
	.word	_Label_2001
	.word	-32
	.word	4
	.word	0
_Label_1993:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1994:
	.ascii	"Pself\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1479,r13		! source line 1479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   _temp_2002 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2002 [entry ] into _temp_2003
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2006 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2006 [entry ] into _temp_2007
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2005 = *_temp_2007  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2004 = _temp_2005 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2003 = _temp_2004  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2008
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2010
	.word	12
	.word	4
	.word	_Label_2011
	.word	-12
	.word	4
	.word	_Label_2012
	.word	-16
	.word	4
	.word	_Label_2013
	.word	-20
	.word	4
	.word	_Label_2014
	.word	-24
	.word	4
	.word	_Label_2015
	.word	-28
	.word	4
	.word	_Label_2016
	.word	-32
	.word	4
	.word	0
_Label_2008:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2009:
	.ascii	"Pself\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1488,r13		! source line 1488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   _temp_2017 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2017 [entry ] into _temp_2018
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2021 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2021 [entry ] into _temp_2022
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2020 = *_temp_2022  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2019 = _temp_2020 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2018 = _temp_2019  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2023
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2025
	.word	12
	.word	4
	.word	_Label_2026
	.word	-12
	.word	4
	.word	_Label_2027
	.word	-16
	.word	4
	.word	_Label_2028
	.word	-20
	.word	4
	.word	_Label_2029
	.word	-24
	.word	4
	.word	_Label_2030
	.word	-28
	.word	4
	.word	_Label_2031
	.word	-32
	.word	4
	.word	0
_Label_2023:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2024:
	.ascii	"Pself\0"
	.align
_Label_2025:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1497,r13		! source line 1497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _temp_2032 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2032 [entry ] into _temp_2033
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2036 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2036 [entry ] into _temp_2037
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2035 = *_temp_2037  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2034 = _temp_2035 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2033 = _temp_2034  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2038
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2040
	.word	12
	.word	4
	.word	_Label_2041
	.word	-12
	.word	4
	.word	_Label_2042
	.word	-16
	.word	4
	.word	_Label_2043
	.word	-20
	.word	4
	.word	_Label_2044
	.word	-24
	.word	4
	.word	_Label_2045
	.word	-28
	.word	4
	.word	_Label_2046
	.word	-32
	.word	4
	.word	0
_Label_2038:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2039:
	.ascii	"Pself\0"
	.align
_Label_2040:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   _temp_2047 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2047 [entry ] into _temp_2048
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2051 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2051 [entry ] into _temp_2052
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2050 = *_temp_2052  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2049 = _temp_2050 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2048 = _temp_2049  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2053
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2055
	.word	12
	.word	4
	.word	_Label_2056
	.word	-12
	.word	4
	.word	_Label_2057
	.word	-16
	.word	4
	.word	_Label_2058
	.word	-20
	.word	4
	.word	_Label_2059
	.word	-24
	.word	4
	.word	_Label_2060
	.word	-28
	.word	4
	.word	_Label_2061
	.word	-32
	.word	4
	.word	0
_Label_2053:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2054:
	.ascii	"Pself\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   _temp_2062 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2062 [entry ] into _temp_2063
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2066 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2066 [entry ] into _temp_2067
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2065 = *_temp_2067  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2064 = _temp_2065 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2063 = _temp_2064  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2068
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	12
	.word	4
	.word	_Label_2071
	.word	-12
	.word	4
	.word	_Label_2072
	.word	-16
	.word	4
	.word	_Label_2073
	.word	-20
	.word	4
	.word	_Label_2074
	.word	-24
	.word	4
	.word	_Label_2075
	.word	-28
	.word	4
	.word	_Label_2076
	.word	-32
	.word	4
	.word	0
_Label_2068:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	1524,r13		! source line 1524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2078 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2078 [0 ] into _temp_2079
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2077 = _temp_2079		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2080 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2080  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1530,r13		! source line 1530
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2081
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2083
	.word	-12
	.word	4
	.word	_Label_2084
	.word	-16
	.word	4
	.word	_Label_2085
	.word	-20
	.word	4
	.word	_Label_2086
	.word	-24
	.word	4
	.word	0
_Label_2081:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2082:
	.ascii	"Pself\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	1535,r13		! source line 1535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2087
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2087
	jmp	_Label_2088
_Label_2087:
! THEN...
	mov	1551,r13		! source line 1551
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2089
_Label_2088:
! ELSE...
	mov	1552,r13		! source line 1552
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2091		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2091
!	jmp	_Label_2090
_Label_2090:
! THEN...
	mov	1553,r13		! source line 1553
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2091:
! END IF...
_Label_2089:
! ASSIGNMENT STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0WH",r10
_Label_2092:
!	jmp	_Label_2093
_Label_2093:
	mov	1559,r13		! source line 1559
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2096		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2096
!	jmp	_Label_2095
_Label_2095:
! THEN...
	mov	1561,r13		! source line 1561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2097 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2097  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1561,r13		! source line 1561
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2096:
! IF STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0IF",r10
	mov	1564,r13		! source line 1564
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2101) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2100  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2100 then goto _Label_2099 else goto _Label_2098
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2098
	jmp	_Label_2099
_Label_2098:
! THEN...
	mov	1565,r13		! source line 1565
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2102 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2099:
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
	mov	1568,r13		! source line 1568
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2104) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2103  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2103 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0WH",r10
_Label_2105:
!   if offset >= 8192 then goto _Label_2107		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2107
!	jmp	_Label_2106
_Label_2106:
	mov	1570,r13		! source line 1570
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2108 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2108  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2110		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2110
!	jmp	_Label_2109
_Label_2109:
! THEN...
	mov	1579,r13		! source line 1579
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2110:
! END WHILE...
	jmp	_Label_2105
_Label_2107:
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2092
_Label_2094:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2111
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2113
	.word	12
	.word	4
	.word	_Label_2114
	.word	16
	.word	4
	.word	_Label_2115
	.word	20
	.word	4
	.word	_Label_2116
	.word	-9
	.word	1
	.word	_Label_2117
	.word	-16
	.word	4
	.word	_Label_2118
	.word	-20
	.word	4
	.word	_Label_2119
	.word	-24
	.word	4
	.word	_Label_2120
	.word	-28
	.word	4
	.word	_Label_2121
	.word	-10
	.word	1
	.word	_Label_2122
	.word	-32
	.word	4
	.word	_Label_2123
	.word	-36
	.word	4
	.word	_Label_2124
	.word	-40
	.word	4
	.word	_Label_2125
	.word	-44
	.word	4
	.word	_Label_2126
	.word	-48
	.word	4
	.word	0
_Label_2111:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2112:
	.ascii	"Pself\0"
	.align
_Label_2113:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2116:
	.byte	'C'
	.ascii	"_temp_2108\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2121:
	.byte	'C'
	.ascii	"_temp_2100\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2125:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	1589,r13		! source line 1589
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2127
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2127
	jmp	_Label_2128
_Label_2127:
! THEN...
	mov	1601,r13		! source line 1601
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2129
_Label_2128:
! ELSE...
	mov	1602,r13		! source line 1602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2131		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2131
!	jmp	_Label_2130
_Label_2130:
! THEN...
	mov	1603,r13		! source line 1603
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2131:
! END IF...
_Label_2129:
! ASSIGNMENT STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0WH",r10
_Label_2132:
!	jmp	_Label_2133
_Label_2133:
	mov	1607,r13		! source line 1607
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2138		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2138
	jmp	_Label_2135
_Label_2138:
	mov	1609,r13		! source line 1609
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2140) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2139  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2139 then goto _Label_2137 else goto _Label_2135
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2135
	jmp	_Label_2137
_Label_2137:
	mov	1610,r13		! source line 1610
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2142) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2141  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2141 then goto _Label_2136 else goto _Label_2135
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2135
	jmp	_Label_2136
_Label_2135:
! THEN...
	mov	1611,r13		! source line 1611
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2136:
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
	mov	1613,r13		! source line 1613
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2144) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2143  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2143 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0WH",r10
_Label_2145:
!   if offset >= 8192 then goto _Label_2147		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2147
!	jmp	_Label_2146
_Label_2146:
	mov	1614,r13		! source line 1614
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2148 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2148  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2150		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2150
!	jmp	_Label_2149
_Label_2149:
! THEN...
	mov	1621,r13		! source line 1621
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2150:
! END WHILE...
	jmp	_Label_2145
_Label_2147:
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2132
_Label_2134:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2151
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2153
	.word	12
	.word	4
	.word	_Label_2154
	.word	16
	.word	4
	.word	_Label_2155
	.word	20
	.word	4
	.word	_Label_2156
	.word	-9
	.word	1
	.word	_Label_2157
	.word	-16
	.word	4
	.word	_Label_2158
	.word	-20
	.word	4
	.word	_Label_2159
	.word	-24
	.word	4
	.word	_Label_2160
	.word	-10
	.word	1
	.word	_Label_2161
	.word	-28
	.word	4
	.word	_Label_2162
	.word	-11
	.word	1
	.word	_Label_2163
	.word	-32
	.word	4
	.word	_Label_2164
	.word	-36
	.word	4
	.word	_Label_2165
	.word	-40
	.word	4
	.word	_Label_2166
	.word	-44
	.word	4
	.word	0
_Label_2151:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2152:
	.ascii	"Pself\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2155:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2156:
	.byte	'C'
	.ascii	"_temp_2148\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2160:
	.byte	'C'
	.ascii	"_temp_2141\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2162:
	.byte	'C'
	.ascii	"_temp_2139\0"
	.align
_Label_2163:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2165:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	1631,r13		! source line 1631
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
	mov	1655,r13		! source line 1655
	mov	"\0\0SE",r10
!   _temp_2170 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2171) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2170  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2169  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2169 >= 4 then goto _Label_2168		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2168
!	jmp	_Label_2167
_Label_2167:
! THEN...
	mov	1658,r13		! source line 1658
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2168:
! IF STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2173		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2173
!	jmp	_Label_2172
_Label_2172:
! THEN...
	mov	1663,r13		! source line 1663
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2173:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0RE",r10
	mov	1668,r13		! source line 1668
	mov	"\0\0SE",r10
!   _temp_2176 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2175 = _temp_2176 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2177 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2178) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2175  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2177  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2174  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2174  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2179
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2181
	.word	12
	.word	4
	.word	_Label_2182
	.word	16
	.word	4
	.word	_Label_2183
	.word	20
	.word	4
	.word	_Label_2184
	.word	-12
	.word	4
	.word	_Label_2185
	.word	-16
	.word	4
	.word	_Label_2186
	.word	-20
	.word	4
	.word	_Label_2187
	.word	-24
	.word	4
	.word	_Label_2188
	.word	-28
	.word	4
	.word	_Label_2189
	.word	-32
	.word	4
	.word	_Label_2190
	.word	-36
	.word	4
	.word	_Label_2191
	.word	-40
	.word	4
	.word	_Label_2192
	.word	-44
	.word	4
	.word	0
_Label_2179:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2180:
	.ascii	"Pself\0"
	.align
_Label_2181:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2183:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2192:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2193
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2193:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2194
	.word	_sourceFileName
	.word	343		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2194:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	2112,r13		! source line 2112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2195 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2195  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2113,r13		! source line 2113
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_2197 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_2199 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2200
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2202
	.word	-12
	.word	4
	.word	_Label_2203
	.word	-16
	.word	4
	.word	_Label_2204
	.word	-20
	.word	4
	.word	_Label_2205
	.word	-24
	.word	4
	.word	_Label_2206
	.word	-28
	.word	4
	.word	0
_Label_2200:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2201:
	.ascii	"Pself\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	2128,r13		! source line 2128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   _temp_2207 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0WH",r10
_Label_2208:
!	jmp	_Label_2209
_Label_2209:
	mov	2142,r13		! source line 2142
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0SE",r10
!   _temp_2211 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2212) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2211  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   _temp_2213 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2149,r13		! source line 2149
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2222 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2216
	cmp	r1,2
	be	_Label_2217
	cmp	r1,3
	be	_Label_2218
	cmp	r1,4
	be	_Label_2219
	cmp	r1,5
	be	_Label_2220
	cmp	r1,6
	be	_Label_2221
	jmp	_Label_2214
! CASE 1...
_Label_2216:
! SEND STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_2223 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2217:
! CALL STATEMENT...
!   _temp_2224 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2154,r13		! source line 2154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2218:
! CALL STATEMENT...
!   _temp_2225 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2156,r13		! source line 2156
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2219:
! CALL STATEMENT...
!   _temp_2226 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2226  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2158,r13		! source line 2158
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2220:
! BREAK STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0BR",r10
	jmp	_Label_2215
! CASE 6...
_Label_2221:
! CALL STATEMENT...
!   _temp_2227 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2227  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2164,r13		! source line 2164
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2214:
! CALL STATEMENT...
!   _temp_2228 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2228  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2166,r13		! source line 2166
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2215:
! END WHILE...
	jmp	_Label_2208
_Label_2210:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2229
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2231
	.word	12
	.word	4
	.word	_Label_2232
	.word	16
	.word	4
	.word	_Label_2233
	.word	20
	.word	4
	.word	_Label_2234
	.word	-12
	.word	4
	.word	_Label_2235
	.word	-16
	.word	4
	.word	_Label_2236
	.word	-20
	.word	4
	.word	_Label_2237
	.word	-24
	.word	4
	.word	_Label_2238
	.word	-28
	.word	4
	.word	_Label_2239
	.word	-32
	.word	4
	.word	_Label_2240
	.word	-36
	.word	4
	.word	_Label_2241
	.word	-40
	.word	4
	.word	_Label_2242
	.word	-44
	.word	4
	.word	_Label_2243
	.word	-48
	.word	4
	.word	_Label_2244
	.word	-52
	.word	4
	.word	0
_Label_2229:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2230:
	.ascii	"Pself\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2232:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2175,r13		! source line 2175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2245
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2246
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2247
	.word	12
	.word	4
	.word	_Label_2248
	.word	16
	.word	4
	.word	_Label_2249
	.word	20
	.word	4
	.word	_Label_2250
	.word	24
	.word	4
	.word	0
_Label_2245:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2246:
	.ascii	"Pself\0"
	.align
_Label_2247:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2248:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2249:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2250:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3218:
	push	r0
	sub	r1,1,r1
	bne	_Label_3218
	mov	2201,r13		! source line 2201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_2251 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0WH",r10
_Label_2252:
!	jmp	_Label_2253
_Label_2253:
	mov	2214,r13		! source line 2214
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   _temp_2255 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2256) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2255  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_2257 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2220,r13		! source line 2220
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2266 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2260
	cmp	r1,2
	be	_Label_2261
	cmp	r1,3
	be	_Label_2262
	cmp	r1,4
	be	_Label_2263
	cmp	r1,5
	be	_Label_2264
	cmp	r1,6
	be	_Label_2265
	jmp	_Label_2258
! CASE 1...
_Label_2260:
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2267 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2261:
! CALL STATEMENT...
!   _temp_2268 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2268  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2225,r13		! source line 2225
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2262:
! CALL STATEMENT...
!   _temp_2269 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2269  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2227,r13		! source line 2227
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2263:
! CALL STATEMENT...
!   _temp_2270 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2270  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2229,r13		! source line 2229
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2264:
! BREAK STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0BR",r10
	jmp	_Label_2259
! CASE 6...
_Label_2265:
! CALL STATEMENT...
!   _temp_2271 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2271  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2235,r13		! source line 2235
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2258:
! CALL STATEMENT...
!   _temp_2272 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2272  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2237,r13		! source line 2237
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2259:
! END WHILE...
	jmp	_Label_2252
_Label_2254:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2273
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2274
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2275
	.word	12
	.word	4
	.word	_Label_2276
	.word	16
	.word	4
	.word	_Label_2277
	.word	20
	.word	4
	.word	_Label_2278
	.word	-12
	.word	4
	.word	_Label_2279
	.word	-16
	.word	4
	.word	_Label_2280
	.word	-20
	.word	4
	.word	_Label_2281
	.word	-24
	.word	4
	.word	_Label_2282
	.word	-28
	.word	4
	.word	_Label_2283
	.word	-32
	.word	4
	.word	_Label_2284
	.word	-36
	.word	4
	.word	_Label_2285
	.word	-40
	.word	4
	.word	_Label_2286
	.word	-44
	.word	4
	.word	_Label_2287
	.word	-48
	.word	4
	.word	_Label_2288
	.word	-52
	.word	4
	.word	0
_Label_2273:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2274:
	.ascii	"Pself\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2276:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2277:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2246,r13		! source line 2246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2289
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2291
	.word	12
	.word	4
	.word	_Label_2292
	.word	16
	.word	4
	.word	_Label_2293
	.word	20
	.word	4
	.word	_Label_2294
	.word	24
	.word	4
	.word	0
_Label_2289:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2290:
	.ascii	"Pself\0"
	.align
_Label_2291:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2292:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2294:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2295
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2295:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2296
	.word	_sourceFileName
	.word	366		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2296:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
	mov	2277,r13		! source line 2277
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2297 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2297  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2284,r13		! source line 2284
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2299 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2302 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   _temp_2303 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2305 = &_temp_2304
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2305 = _temp_2305 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2307 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3220:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3220
!   _temp_2307 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2309:
!   Data Move: *_temp_2305 = _temp_2307  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3221:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3221
!   _temp_2305 = _temp_2305 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2306 = _temp_2306 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2306) then goto _Label_2309
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2309
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2310 = &_temp_2304
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3222
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3222:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2303 = *_temp_2310  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3223:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3223
! FOR STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2315 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2316 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2315  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2311:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2316 then goto _Label_2314		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2314
_Label_2312:
	mov	2294,r13		! source line 2294
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   _temp_2317 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2317 [i ] into _temp_2318
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2319 = _temp_2318 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2319 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2320 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2320 [i ] into _temp_2321
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_2323 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2323 [i ] into _temp_2324
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2322 = _temp_2324		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2325 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2322  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2313:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2311
! END FOR
_Label_2314:
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2328 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   _temp_2329 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2331 = &_temp_2330
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2331 = _temp_2331 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2333 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3224:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3224
!   _temp_2333 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2335:
!   Data Move: *_temp_2331 = _temp_2333  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3225:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3225
!   _temp_2331 = _temp_2331 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2332 = _temp_2332 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2332) then goto _Label_2335
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2335
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2336 = &_temp_2330
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3226
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3226:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2329 = *_temp_2336  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3227:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3227
! FOR STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2341 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2342 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2341  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2337:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2342 then goto _Label_2340		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2340
_Label_2338:
	mov	2306,r13		! source line 2306
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   _temp_2343 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2343 [i ] into _temp_2344
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2345 = _temp_2344 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2345 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   _temp_2347 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2347 [i ] into _temp_2348
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2346 = _temp_2348		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2349 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2346  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2339:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2337
! END FOR
_Label_2340:
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3228:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3228
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   _temp_2351 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2352 = _temp_2351 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2352 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2353 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0SE",r10
!   _temp_2354 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2355
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2356
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2357
	.word	-12
	.word	4
	.word	_Label_2358
	.word	-16
	.word	4
	.word	_Label_2359
	.word	-20
	.word	4
	.word	_Label_2360
	.word	-24
	.word	4
	.word	_Label_2361
	.word	-28
	.word	4
	.word	_Label_2362
	.word	-32
	.word	4
	.word	_Label_2363
	.word	-36
	.word	4
	.word	_Label_2364
	.word	-40
	.word	4
	.word	_Label_2365
	.word	-44
	.word	4
	.word	_Label_2366
	.word	-48
	.word	4
	.word	_Label_2367
	.word	-52
	.word	4
	.word	_Label_2368
	.word	-56
	.word	4
	.word	_Label_2369
	.word	-60
	.word	4
	.word	_Label_2370
	.word	-64
	.word	4
	.word	_Label_2371
	.word	-68
	.word	4
	.word	_Label_2372
	.word	-72
	.word	4
	.word	_Label_2373
	.word	-100
	.word	28
	.word	_Label_2374
	.word	-104
	.word	4
	.word	_Label_2375
	.word	-108
	.word	4
	.word	_Label_2376
	.word	-392
	.word	284
	.word	_Label_2377
	.word	-396
	.word	4
	.word	_Label_2378
	.word	-400
	.word	4
	.word	_Label_2379
	.word	-404
	.word	4
	.word	_Label_2380
	.word	-408
	.word	4
	.word	_Label_2381
	.word	-412
	.word	4
	.word	_Label_2382
	.word	-416
	.word	4
	.word	_Label_2383
	.word	-420
	.word	4
	.word	_Label_2384
	.word	-424
	.word	4
	.word	_Label_2385
	.word	-428
	.word	4
	.word	_Label_2386
	.word	-432
	.word	4
	.word	_Label_2387
	.word	-436
	.word	4
	.word	_Label_2388
	.word	-440
	.word	4
	.word	_Label_2389
	.word	-444
	.word	4
	.word	_Label_2390
	.word	-448
	.word	4
	.word	_Label_2391
	.word	-452
	.word	4
	.word	_Label_2392
	.word	-456
	.word	4
	.word	_Label_2393
	.word	-460
	.word	4
	.word	_Label_2394
	.word	-500
	.word	40
	.word	_Label_2395
	.word	-504
	.word	4
	.word	_Label_2396
	.word	-508
	.word	4
	.word	_Label_2397
	.word	-912
	.word	404
	.word	_Label_2398
	.word	-916
	.word	4
	.word	_Label_2399
	.word	-920
	.word	4
	.word	_Label_2400
	.word	-924
	.word	4
	.word	_Label_2401
	.word	-928
	.word	4
	.word	_Label_2402
	.word	-932
	.word	4
	.word	_Label_2403
	.word	-936
	.word	4
	.word	_Label_2404
	.word	-940
	.word	4
	.word	_Label_2405
	.word	-944
	.word	4
	.word	0
_Label_2355:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2356:
	.ascii	"Pself\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	2326,r13		! source line 2326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2406 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2407 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2329,r13		! source line 2329
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2412 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2413 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2412  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2408:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2413 then goto _Label_2411		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2411
_Label_2409:
	mov	2330,r13		! source line 2330
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2414 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2414  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2331,r13		! source line 2331
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2415 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2415  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2333,r13		! source line 2333
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2416 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2416 [i ] into _temp_2417
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2410:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2408
! END FOR
_Label_2411:
! CALL STATEMENT...
!   _temp_2418 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2336,r13		! source line 2336
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   _temp_2419 = _function_225_printFCB
	set	_function_225_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2420 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2419  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2338,r13		! source line 2338
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2421 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2421  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2339,r13		! source line 2339
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2426 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2427 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2426  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2422:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2427 then goto _Label_2425		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2425
_Label_2423:
	mov	2340,r13		! source line 2340
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2428 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2428  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2341,r13		! source line 2341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2342,r13		! source line 2342
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2429 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2429  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2343,r13		! source line 2343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2431 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2431 [i ] into _temp_2432
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2430 = _temp_2432		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2430  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2344,r13		! source line 2344
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2433 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2433  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2345,r13		! source line 2345
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0SE",r10
!   _temp_2434 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2434 [i ] into _temp_2435
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2424:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2422
! END FOR
_Label_2425:
! CALL STATEMENT...
!   _temp_2436 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2348,r13		! source line 2348
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0SE",r10
!   _temp_2437 = _function_224_printOpen
	set	_function_224_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2438 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2437  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   _temp_2439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2440
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2442
	.word	-12
	.word	4
	.word	_Label_2443
	.word	-16
	.word	4
	.word	_Label_2444
	.word	-20
	.word	4
	.word	_Label_2445
	.word	-24
	.word	4
	.word	_Label_2446
	.word	-28
	.word	4
	.word	_Label_2447
	.word	-32
	.word	4
	.word	_Label_2448
	.word	-36
	.word	4
	.word	_Label_2449
	.word	-40
	.word	4
	.word	_Label_2450
	.word	-44
	.word	4
	.word	_Label_2451
	.word	-48
	.word	4
	.word	_Label_2452
	.word	-52
	.word	4
	.word	_Label_2453
	.word	-56
	.word	4
	.word	_Label_2454
	.word	-60
	.word	4
	.word	_Label_2455
	.word	-64
	.word	4
	.word	_Label_2456
	.word	-68
	.word	4
	.word	_Label_2457
	.word	-72
	.word	4
	.word	_Label_2458
	.word	-76
	.word	4
	.word	_Label_2459
	.word	-80
	.word	4
	.word	_Label_2460
	.word	-84
	.word	4
	.word	_Label_2461
	.word	-88
	.word	4
	.word	_Label_2462
	.word	-92
	.word	4
	.word	_Label_2463
	.word	-96
	.word	4
	.word	_Label_2464
	.word	-100
	.word	4
	.word	_Label_2465
	.word	-104
	.word	4
	.word	_Label_2466
	.word	-108
	.word	4
	.word	_Label_2467
	.word	-112
	.word	4
	.word	_Label_2468
	.word	-116
	.word	4
	.word	0
_Label_2440:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2441:
	.ascii	"Pself\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2468:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	2355,r13		! source line 2355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_2469 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2470
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2470
	jmp	_Label_2471
_Label_2470:
! THEN...
	mov	2373,r13		! source line 2373
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2471:
! SEND STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
!   _temp_2472 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0WH",r10
_Label_2473:
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2476 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2474 else goto _Label_2475
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2475
	jmp	_Label_2474
_Label_2474:
	mov	2378,r13		! source line 2378
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0SE",r10
!   _temp_2477 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2478 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2477  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2473
_Label_2475:
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2479 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2480 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2480 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2481 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2481 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2482 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2482 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_2483 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2484
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2486
	.word	12
	.word	4
	.word	_Label_2487
	.word	-12
	.word	4
	.word	_Label_2488
	.word	-16
	.word	4
	.word	_Label_2489
	.word	-20
	.word	4
	.word	_Label_2490
	.word	-24
	.word	4
	.word	_Label_2491
	.word	-28
	.word	4
	.word	_Label_2492
	.word	-32
	.word	4
	.word	_Label_2493
	.word	-36
	.word	4
	.word	_Label_2494
	.word	-40
	.word	4
	.word	_Label_2495
	.word	-44
	.word	4
	.word	_Label_2496
	.word	-48
	.word	4
	.word	_Label_2497
	.word	-52
	.word	4
	.word	_Label_2498
	.word	-56
	.word	4
	.word	0
_Label_2484:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2485:
	.ascii	"Pself\0"
	.align
_Label_2486:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2497:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2498:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	2396,r13		! source line 2396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2500		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2500
!	jmp	_Label_2499
_Label_2499:
! THEN...
	mov	2427,r13		! source line 2427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2501 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2427,r13		! source line 2427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2500:
! ASSIGNMENT STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0WH",r10
_Label_2502:
!   if numFiles <= 0 then goto _Label_2504		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2504
!	jmp	_Label_2503
_Label_2503:
	mov	2437,r13		! source line 2437
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2505 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2438,r13		! source line 2438
	mov	"\0\0CA",r10
	call	_function_226_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2506 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2440,r13		! source line 2440
	mov	"\0\0CA",r10
	call	_function_226_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2507 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CA",r10
	call	_function_226_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2511 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2511 then goto _Label_2509		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2509
!	jmp	_Label_2510
_Label_2510:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2513
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2512 = _temp_2513		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2512  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2508 else goto _Label_2509
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2509
	jmp	_Label_2508
_Label_2508:
! THEN...
	mov	2446,r13		! source line 2446
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0BR",r10
	jmp	_Label_2504
! END IF...
_Label_2509:
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2502
_Label_2504:
! IF STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2515		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2515
!	jmp	_Label_2514
_Label_2514:
! THEN...
	mov	2454,r13		! source line 2454
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2515:
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2516 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2521 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2522 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2521  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2517:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2522 then goto _Label_2520		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2520
_Label_2518:
	mov	2459,r13		! source line 2459
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   _temp_2523 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2523 [i ] into _temp_2524
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2524		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2528 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2527 = *_temp_2528  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2527 != start then goto _Label_2526		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2526
!	jmp	_Label_2525
_Label_2525:
! THEN...
	mov	2462,r13		! source line 2462
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2529 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2532 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2531 = *_temp_2532  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2530 = _temp_2531 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2529 = _temp_2530  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2533 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2526:
!   Increment the FOR-LOOP index variable and jump back
_Label_2519:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2517
! END FOR
_Label_2520:
! WHILE STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0WH",r10
_Label_2534:
	mov	2469,r13		! source line 2469
	mov	"\0\0SE",r10
!   _temp_2537 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2535 else goto _Label_2536
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2536
	jmp	_Label_2535
_Label_2535:
	mov	2469,r13		! source line 2469
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_2538 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2539 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2538  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2534
_Label_2536:
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
!   _temp_2540 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_2541 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2542 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2542 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2543 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2543 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2544 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2548 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2548 < 0 then goto _Label_2547		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2547
	jmp	_Label_2545
_Label_2547:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2550 ) then goto _Label_2546		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2546
!	jmp	_Label_2545
_Label_2545:
! THEN...
	mov	2482,r13		! source line 2482
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2551 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2482,r13		! source line 2482
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2546:
! RETURN STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2552
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2554
	.word	12
	.word	4
	.word	_Label_2555
	.word	-12
	.word	4
	.word	_Label_2556
	.word	-16
	.word	4
	.word	_Label_2557
	.word	-20
	.word	4
	.word	_Label_2558
	.word	-24
	.word	4
	.word	_Label_2559
	.word	-28
	.word	4
	.word	_Label_2560
	.word	-32
	.word	4
	.word	_Label_2561
	.word	-36
	.word	4
	.word	_Label_2562
	.word	-40
	.word	4
	.word	_Label_2563
	.word	-44
	.word	4
	.word	_Label_2564
	.word	-48
	.word	4
	.word	_Label_2565
	.word	-52
	.word	4
	.word	_Label_2566
	.word	-56
	.word	4
	.word	_Label_2567
	.word	-60
	.word	4
	.word	_Label_2568
	.word	-64
	.word	4
	.word	_Label_2569
	.word	-68
	.word	4
	.word	_Label_2570
	.word	-72
	.word	4
	.word	_Label_2571
	.word	-76
	.word	4
	.word	_Label_2572
	.word	-80
	.word	4
	.word	_Label_2573
	.word	-84
	.word	4
	.word	_Label_2574
	.word	-88
	.word	4
	.word	_Label_2575
	.word	-92
	.word	4
	.word	_Label_2576
	.word	-96
	.word	4
	.word	_Label_2577
	.word	-100
	.word	4
	.word	_Label_2578
	.word	-104
	.word	4
	.word	_Label_2579
	.word	-108
	.word	4
	.word	_Label_2580
	.word	-112
	.word	4
	.word	_Label_2581
	.word	-116
	.word	4
	.word	_Label_2582
	.word	-120
	.word	4
	.word	_Label_2583
	.word	-124
	.word	4
	.word	_Label_2584
	.word	-128
	.word	4
	.word	_Label_2585
	.word	-132
	.word	4
	.word	_Label_2586
	.word	-136
	.word	4
	.word	_Label_2587
	.word	-140
	.word	4
	.word	_Label_2588
	.word	-144
	.word	4
	.word	_Label_2589
	.word	-148
	.word	4
	.word	_Label_2590
	.word	-152
	.word	4
	.word	_Label_2591
	.word	-156
	.word	4
	.word	_Label_2592
	.word	-160
	.word	4
	.word	0
_Label_2552:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2553:
	.ascii	"Pself\0"
	.align
_Label_2554:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2586:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2587:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2588:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2589:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2590:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2591:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2592:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	2497,r13		! source line 2497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0IF",r10
!   _temp_2595 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2595 then goto _Label_2594		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2594
!	jmp	_Label_2593
_Label_2593:
! THEN...
	mov	2500,r13		! source line 2500
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2594:
! SEND STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_2596 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2597 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2598 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2598  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2599 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2602 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2601 = *_temp_2602  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2600 = _temp_2601 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2599 = _temp_2600  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2605 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2605 > 0 then goto _Label_2604		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2604
!	jmp	_Label_2603
_Label_2603:
! THEN...
	mov	2507,r13		! source line 2507
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_2607 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0SE",r10
!   _temp_2608 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2609 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2608  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2612 = *_temp_2613  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2611 = _temp_2612 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2610 = _temp_2611  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2616 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2616 > 0 then goto _Label_2615		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2615
!	jmp	_Label_2614
_Label_2614:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_2618 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_2619 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2620 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2619  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2615:
! END IF...
_Label_2604:
! SEND STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0SE",r10
!   _temp_2621 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2622
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2624
	.word	12
	.word	4
	.word	_Label_2625
	.word	-12
	.word	4
	.word	_Label_2626
	.word	-16
	.word	4
	.word	_Label_2627
	.word	-20
	.word	4
	.word	_Label_2628
	.word	-24
	.word	4
	.word	_Label_2629
	.word	-28
	.word	4
	.word	_Label_2630
	.word	-32
	.word	4
	.word	_Label_2631
	.word	-36
	.word	4
	.word	_Label_2632
	.word	-40
	.word	4
	.word	_Label_2633
	.word	-44
	.word	4
	.word	_Label_2634
	.word	-48
	.word	4
	.word	_Label_2635
	.word	-52
	.word	4
	.word	_Label_2636
	.word	-56
	.word	4
	.word	_Label_2637
	.word	-60
	.word	4
	.word	_Label_2638
	.word	-64
	.word	4
	.word	_Label_2639
	.word	-68
	.word	4
	.word	_Label_2640
	.word	-72
	.word	4
	.word	_Label_2641
	.word	-76
	.word	4
	.word	_Label_2642
	.word	-80
	.word	4
	.word	_Label_2643
	.word	-84
	.word	4
	.word	_Label_2644
	.word	-88
	.word	4
	.word	_Label_2645
	.word	-92
	.word	4
	.word	_Label_2646
	.word	-96
	.word	4
	.word	_Label_2647
	.word	-100
	.word	4
	.word	_Label_2648
	.word	-104
	.word	4
	.word	0
_Label_2622:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2623:
	.ascii	"Pself\0"
	.align
_Label_2624:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2648:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	2520,r13		! source line 2520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2651 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2651) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2653 = _temp_2651 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2653 ) then goto _Label_2650		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2650
!	jmp	_Label_2649
_Label_2649:
! THEN...
	mov	2526,r13		! source line 2526
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2657 = *_temp_2658  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2657) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = _temp_2657 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2656 = *_temp_2659  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2656 >= 0 then goto _Label_2655		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2655
!	jmp	_Label_2654
_Label_2654:
! THEN...
	mov	2527,r13		! source line 2527
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2660 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2527,r13		! source line 2527
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2655:
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2661 = *_temp_2662  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2661) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2663 = _temp_2661 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2663 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2667 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2666 = *_temp_2667  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2666) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2668 = _temp_2666 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2665 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2670 = *_temp_2671  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2670) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = _temp_2670 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2669 = *_temp_2672  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2664 = _temp_2665 + _temp_2669		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2674 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2674) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2676 = _temp_2674 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2673 = *_temp_2676  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2677 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2664  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2673  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2650:
! RETURN STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2678
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2680
	.word	12
	.word	4
	.word	_Label_2681
	.word	-12
	.word	4
	.word	_Label_2682
	.word	-16
	.word	4
	.word	_Label_2683
	.word	-20
	.word	4
	.word	_Label_2684
	.word	-24
	.word	4
	.word	_Label_2685
	.word	-28
	.word	4
	.word	_Label_2686
	.word	-32
	.word	4
	.word	_Label_2687
	.word	-36
	.word	4
	.word	_Label_2688
	.word	-40
	.word	4
	.word	_Label_2689
	.word	-44
	.word	4
	.word	_Label_2690
	.word	-48
	.word	4
	.word	_Label_2691
	.word	-52
	.word	4
	.word	_Label_2692
	.word	-56
	.word	4
	.word	_Label_2693
	.word	-60
	.word	4
	.word	_Label_2694
	.word	-64
	.word	4
	.word	_Label_2695
	.word	-68
	.word	4
	.word	_Label_2696
	.word	-72
	.word	4
	.word	_Label_2697
	.word	-76
	.word	4
	.word	_Label_2698
	.word	-80
	.word	4
	.word	_Label_2699
	.word	-84
	.word	4
	.word	_Label_2700
	.word	-88
	.word	4
	.word	_Label_2701
	.word	-92
	.word	4
	.word	_Label_2702
	.word	-96
	.word	4
	.word	_Label_2703
	.word	-100
	.word	4
	.word	_Label_2704
	.word	-104
	.word	4
	.word	_Label_2705
	.word	-108
	.word	4
	.word	0
_Label_2678:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2679:
	.ascii	"Pself\0"
	.align
_Label_2680:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	2539,r13		! source line 2539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
!   _temp_2706 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2712		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2712
!   _temp_2711 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2713
_Label_2712:
!   _temp_2711 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2713:
!   if _temp_2711 then goto _Label_2710 else goto _Label_2707
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2707
	jmp	_Label_2710
_Label_2710:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2716 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2715 = *_temp_2716  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2715 == 0 then goto _Label_2717		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2717
!   _temp_2714 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2718
_Label_2717:
!   _temp_2714 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2718:
!   if _temp_2714 then goto _Label_2709 else goto _Label_2707
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2707
	jmp	_Label_2709
_Label_2709:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2721 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2720 = *_temp_2721  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2720) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = _temp_2720 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2719 = *_temp_2722  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2719 >= 0 then goto _Label_2708		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2708
!	jmp	_Label_2707
_Label_2707:
! THEN...
	mov	2556,r13		! source line 2556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2723 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2556,r13		! source line 2556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2708:
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2724 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2724  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0WH",r10
_Label_2725:
!   if numBytes <= 0 then goto _Label_2727		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2727
!	jmp	_Label_2726
_Label_2726:
	mov	2559,r13		! source line 2559
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2731 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2730 = *_temp_2731  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2730 == sector then goto _Label_2729		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2729
!	jmp	_Label_2728
_Label_2728:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2732) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2735 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2734 = *_temp_2735  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2733 = sector + _temp_2734		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2737 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2736 = *_temp_2737  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2738 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2733  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2736  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2739 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2739 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2740 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2729:
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2742 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2741 = *_temp_2742  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2741 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   _temp_2743 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2743  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2725
_Label_2727:
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_2744 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2745
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2747
	.word	12
	.word	4
	.word	_Label_2748
	.word	16
	.word	4
	.word	_Label_2749
	.word	20
	.word	4
	.word	_Label_2750
	.word	24
	.word	4
	.word	_Label_2751
	.word	-16
	.word	4
	.word	_Label_2752
	.word	-20
	.word	4
	.word	_Label_2753
	.word	-24
	.word	4
	.word	_Label_2754
	.word	-28
	.word	4
	.word	_Label_2755
	.word	-32
	.word	4
	.word	_Label_2756
	.word	-36
	.word	4
	.word	_Label_2757
	.word	-40
	.word	4
	.word	_Label_2758
	.word	-44
	.word	4
	.word	_Label_2759
	.word	-48
	.word	4
	.word	_Label_2760
	.word	-52
	.word	4
	.word	_Label_2761
	.word	-56
	.word	4
	.word	_Label_2762
	.word	-60
	.word	4
	.word	_Label_2763
	.word	-64
	.word	4
	.word	_Label_2764
	.word	-68
	.word	4
	.word	_Label_2765
	.word	-72
	.word	4
	.word	_Label_2766
	.word	-76
	.word	4
	.word	_Label_2767
	.word	-80
	.word	4
	.word	_Label_2768
	.word	-84
	.word	4
	.word	_Label_2769
	.word	-88
	.word	4
	.word	_Label_2770
	.word	-92
	.word	4
	.word	_Label_2771
	.word	-96
	.word	4
	.word	_Label_2772
	.word	-100
	.word	4
	.word	_Label_2773
	.word	-104
	.word	4
	.word	_Label_2774
	.word	-9
	.word	1
	.word	_Label_2775
	.word	-10
	.word	1
	.word	_Label_2776
	.word	-108
	.word	4
	.word	_Label_2777
	.word	-112
	.word	4
	.word	_Label_2778
	.word	-116
	.word	4
	.word	_Label_2779
	.word	-120
	.word	4
	.word	_Label_2780
	.word	-124
	.word	4
	.word	_Label_2781
	.word	-128
	.word	4
	.word	0
_Label_2745:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2746:
	.ascii	"Pself\0"
	.align
_Label_2747:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2774:
	.byte	'C'
	.ascii	"_temp_2714\0"
	.align
_Label_2775:
	.byte	'C'
	.ascii	"_temp_2711\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2779:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2780:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	2603,r13		! source line 2603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2782 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2788		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2788
!   _temp_2787 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2789
_Label_2788:
!   _temp_2787 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2789:
!   if _temp_2787 then goto _Label_2786 else goto _Label_2783
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2783
	jmp	_Label_2786
_Label_2786:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2792 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2791 = *_temp_2792  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2791 == 0 then goto _Label_2793		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2793
!   _temp_2790 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2794
_Label_2793:
!   _temp_2790 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2794:
!   if _temp_2790 then goto _Label_2785 else goto _Label_2783
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2783
	jmp	_Label_2785
_Label_2785:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2796) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2798 = _temp_2796 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2795 = *_temp_2798  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2795 >= 0 then goto _Label_2784		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2784
!	jmp	_Label_2783
_Label_2783:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2621,r13		! source line 2621
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2784:
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2800 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2800  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0WH",r10
_Label_2801:
!   if numBytes <= 0 then goto _Label_2803		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2803
!	jmp	_Label_2802
_Label_2802:
	mov	2624,r13		! source line 2624
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2806 = *_temp_2807  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2806 == sector then goto _Label_2805		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2640,r13		! source line 2640
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2808) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2805:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2810 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2809 = *_temp_2810  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2809 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   _temp_2811 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2811  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2815 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2814 = *_temp_2815  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2814 != sector then goto _Label_2813		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2813
!	jmp	_Label_2812
_Label_2812:
	jmp	_Label_2816
_Label_2813:
! ELSE...
	mov	2646,r13		! source line 2646
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2819
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2819
	jmp	_Label_2818
_Label_2819:
!   if bytesToMove != 8192 then goto _Label_2818		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2818
!	jmp	_Label_2817
_Label_2817:
	jmp	_Label_2820
_Label_2818:
! ELSE...
	mov	2650,r13		! source line 2650
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2822 = *_temp_2823  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2821 = sector + _temp_2822		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2825 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2824 = *_temp_2825  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2826 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2821  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2824  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2820:
! END IF...
_Label_2816:
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2827 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2827 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2828 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2828 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2659,r13		! source line 2659
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2801
_Label_2803:
! SEND STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0SE",r10
!   _temp_2829 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2830
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2832
	.word	12
	.word	4
	.word	_Label_2833
	.word	16
	.word	4
	.word	_Label_2834
	.word	20
	.word	4
	.word	_Label_2835
	.word	24
	.word	4
	.word	_Label_2836
	.word	-16
	.word	4
	.word	_Label_2837
	.word	-20
	.word	4
	.word	_Label_2838
	.word	-24
	.word	4
	.word	_Label_2839
	.word	-28
	.word	4
	.word	_Label_2840
	.word	-32
	.word	4
	.word	_Label_2841
	.word	-36
	.word	4
	.word	_Label_2842
	.word	-40
	.word	4
	.word	_Label_2843
	.word	-44
	.word	4
	.word	_Label_2844
	.word	-48
	.word	4
	.word	_Label_2845
	.word	-52
	.word	4
	.word	_Label_2846
	.word	-56
	.word	4
	.word	_Label_2847
	.word	-60
	.word	4
	.word	_Label_2848
	.word	-64
	.word	4
	.word	_Label_2849
	.word	-68
	.word	4
	.word	_Label_2850
	.word	-72
	.word	4
	.word	_Label_2851
	.word	-76
	.word	4
	.word	_Label_2852
	.word	-80
	.word	4
	.word	_Label_2853
	.word	-84
	.word	4
	.word	_Label_2854
	.word	-88
	.word	4
	.word	_Label_2855
	.word	-92
	.word	4
	.word	_Label_2856
	.word	-96
	.word	4
	.word	_Label_2857
	.word	-100
	.word	4
	.word	_Label_2858
	.word	-104
	.word	4
	.word	_Label_2859
	.word	-108
	.word	4
	.word	_Label_2860
	.word	-112
	.word	4
	.word	_Label_2861
	.word	-9
	.word	1
	.word	_Label_2862
	.word	-10
	.word	1
	.word	_Label_2863
	.word	-116
	.word	4
	.word	_Label_2864
	.word	-120
	.word	4
	.word	_Label_2865
	.word	-124
	.word	4
	.word	_Label_2866
	.word	-128
	.word	4
	.word	_Label_2867
	.word	-132
	.word	4
	.word	_Label_2868
	.word	-136
	.word	4
	.word	0
_Label_2830:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2831:
	.ascii	"Pself\0"
	.align
_Label_2832:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2835:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2861:
	.byte	'C'
	.ascii	"_temp_2790\0"
	.align
_Label_2862:
	.byte	'C'
	.ascii	"_temp_2787\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2864:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2866:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2867:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2868:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2869
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2869:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2870
	.word	_sourceFileName
	.word	391		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2870:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
	mov	2707,r13		! source line 2707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
	mov	2709,r13		! source line 2709
	mov	"\0\0SE",r10
!   _temp_2871 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2872
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2874
	.word	-12
	.word	4
	.word	0
_Label_2872:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2873:
	.ascii	"Pself\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	2717,r13		! source line 2717
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2875 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2875  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2718,r13		! source line 2718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2719,r13		! source line 2719
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2876 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2876  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2720,r13		! source line 2720
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2721,r13		! source line 2721
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2877 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2722,r13		! source line 2722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2878 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2725,r13		! source line 2725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2879 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2879  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2880 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2880  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2729,r13		! source line 2729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2881
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2883
	.word	-12
	.word	4
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-24
	.word	4
	.word	_Label_2887
	.word	-28
	.word	4
	.word	_Label_2888
	.word	-32
	.word	4
	.word	0
_Label_2881:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2882:
	.ascii	"Pself\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2889
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2889:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2890
	.word	_sourceFileName
	.word	408		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2890:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	2741,r13		! source line 2741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2891 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2742,r13		! source line 2742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2743,r13		! source line 2743
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2892 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2892  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2894		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2894
!	jmp	_Label_2893
_Label_2893:
! THEN...
	mov	2746,r13		! source line 2746
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2895
_Label_2894:
! ELSE...
	mov	2748,r13		! source line 2748
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2896 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2895:
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2897
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2899
	.word	-12
	.word	4
	.word	_Label_2900
	.word	-16
	.word	4
	.word	_Label_2901
	.word	-20
	.word	4
	.word	0
_Label_2897:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2898:
	.ascii	"Pself\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	2754,r13		! source line 2754
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   _temp_2902 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2903 = _temp_2902 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
!   _temp_2904 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2905 = _temp_2904 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2908 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2907  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2906  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2906  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2909
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2911
	.word	12
	.word	4
	.word	_Label_2912
	.word	16
	.word	4
	.word	_Label_2913
	.word	-16
	.word	4
	.word	_Label_2914
	.word	-20
	.word	4
	.word	_Label_2915
	.word	-9
	.word	1
	.word	_Label_2916
	.word	-24
	.word	4
	.word	_Label_2917
	.word	-28
	.word	4
	.word	_Label_2918
	.word	-32
	.word	4
	.word	_Label_2919
	.word	-36
	.word	4
	.word	_Label_2920
	.word	-40
	.word	4
	.word	0
_Label_2909:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2910:
	.ascii	"Pself\0"
	.align
_Label_2911:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2912:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2915:
	.byte	'C'
	.ascii	"_temp_2906\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2920:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	2773,r13		! source line 2773
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0IF",r10
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2924 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2925) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2924  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2923  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2923 then goto _Label_2922 else goto _Label_2921
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2921
	jmp	_Label_2922
_Label_2921:
! THEN...
	mov	2779,r13		! source line 2779
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2926 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2779,r13		! source line 2779
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2922:
! RETURN STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2927
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2929
	.word	-16
	.word	4
	.word	_Label_2930
	.word	-20
	.word	4
	.word	_Label_2931
	.word	-24
	.word	4
	.word	_Label_2932
	.word	-9
	.word	1
	.word	_Label_2933
	.word	-28
	.word	4
	.word	0
_Label_2927:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2928:
	.ascii	"Pself\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2932:
	.byte	'C'
	.ascii	"_temp_2923\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	2786,r13		! source line 2786
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2937 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2936 = *_temp_2937  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2936) then goto _Label_2935
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2935
!	jmp	_Label_2934
_Label_2934:
! THEN...
	mov	2813,r13		! source line 2813
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2938 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2938  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2813,r13		! source line 2813
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2935:
! IF STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0IF",r10
	mov	2817,r13		! source line 2817
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2942) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2941  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2941 == 1112300152 then goto _Label_2940		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2940
!	jmp	_Label_2939
_Label_2939:
! THEN...
	mov	2818,r13		! source line 2818
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2943 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2940:
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0AS",r10
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2944) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2945) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2946) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2947) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
	mov	2827,r13		! source line 2827
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2948) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
	mov	2828,r13		! source line 2828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
!   _temp_2952 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2952) then goto _Label_2951
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2951
!	jmp	_Label_2950
_Label_2950:
! THEN...
	mov	2832,r13		! source line 2832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2953 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2953  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2951:
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2955
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2955
!	jmp	_Label_2954
_Label_2954:
! THEN...
	mov	2840,r13		! source line 2840
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2956 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2956  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2955:
! IF STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0IF",r10
!   _temp_2959 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2959) then goto _Label_2958
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2958
!	jmp	_Label_2957
_Label_2957:
! THEN...
	mov	2846,r13		! source line 2846
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2960 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2960  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2958:
! IF STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0IF",r10
!   _temp_2963 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2963 then goto _Label_2962		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2962
!	jmp	_Label_2961
_Label_2961:
! THEN...
	mov	2850,r13		! source line 2850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2964 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2850,r13		! source line 2850
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2962:
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0IF",r10
!   _temp_2967 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2967) then goto _Label_2966
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2966
!	jmp	_Label_2965
_Label_2965:
! THEN...
	mov	2857,r13		! source line 2857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2968 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2968  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2966:
! IF STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0IF",r10
!   _temp_2971 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2971 then goto _Label_2970		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2970
!	jmp	_Label_2969
_Label_2969:
! THEN...
	mov	2861,r13		! source line 2861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2972 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2970:
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   _temp_2975 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2974 = _temp_2975 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2973 = _temp_2974 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2973 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2977		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2977
!	jmp	_Label_2976
_Label_2976:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2978 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2979 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2980 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2885,r13		! source line 2885
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2977:
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
!   _temp_2981 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0IF",r10
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2985) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2984  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2984 == 707406378 then goto _Label_2983		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2983
!	jmp	_Label_2982
_Label_2982:
! THEN...
	mov	2895,r13		! source line 2895
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2986 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2986  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0SE",r10
!   _temp_2987 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2983:
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2992 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2993 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2992  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2988:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2993 then goto _Label_2991		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2991
_Label_2989:
	mov	2902,r13		! source line 2902
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0AS",r10
	mov	2903,r13		! source line 2903
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0IF",r10
	mov	2906,r13		! source line 2906
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2997) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2996  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2996 then goto _Label_2995 else goto _Label_2994
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2994
	jmp	_Label_2995
_Label_2994:
! THEN...
	mov	2907,r13		! source line 2907
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2998 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2998  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
!   _temp_2999 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2995:
! SEND STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2990:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2988
! END FOR
_Label_2991:
! IF STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0IF",r10
	mov	2916,r13		! source line 2916
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3003) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3002  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3002 == 707406378 then goto _Label_3001		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3001
!	jmp	_Label_3000
_Label_3000:
! THEN...
	mov	2917,r13		! source line 2917
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3004 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3004  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2917,r13		! source line 2917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0SE",r10
!   _temp_3005 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3001:
! FOR STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3010 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3011 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3010  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3006:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3011 then goto _Label_3009		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3009
_Label_3007:
	mov	2923,r13		! source line 2923
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0IF",r10
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3015) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3014  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3014 then goto _Label_3013 else goto _Label_3012
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3012
	jmp	_Label_3013
_Label_3012:
! THEN...
	mov	2928,r13		! source line 2928
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3016 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3016  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2928,r13		! source line 2928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
!   _temp_3017 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3013:
! ASSIGNMENT STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3008:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3006
! END FOR
_Label_3009:
! IF STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0IF",r10
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3021) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3020  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3020 == 707406378 then goto _Label_3019		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3019
!	jmp	_Label_3018
_Label_3018:
! THEN...
	mov	2937,r13		! source line 2937
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3022 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3022  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0SE",r10
!   _temp_3023 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3019:
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
	mov	2943,r13		! source line 2943
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2947,r13		! source line 2947
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3024
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3026
	.word	12
	.word	4
	.word	_Label_3027
	.word	-16
	.word	4
	.word	_Label_3028
	.word	-20
	.word	4
	.word	_Label_3029
	.word	-24
	.word	4
	.word	_Label_3030
	.word	-28
	.word	4
	.word	_Label_3031
	.word	-32
	.word	4
	.word	_Label_3032
	.word	-36
	.word	4
	.word	_Label_3033
	.word	-40
	.word	4
	.word	_Label_3034
	.word	-9
	.word	1
	.word	_Label_3035
	.word	-44
	.word	4
	.word	_Label_3036
	.word	-48
	.word	4
	.word	_Label_3037
	.word	-52
	.word	4
	.word	_Label_3038
	.word	-56
	.word	4
	.word	_Label_3039
	.word	-60
	.word	4
	.word	_Label_3040
	.word	-64
	.word	4
	.word	_Label_3041
	.word	-68
	.word	4
	.word	_Label_3042
	.word	-72
	.word	4
	.word	_Label_3043
	.word	-76
	.word	4
	.word	_Label_3044
	.word	-10
	.word	1
	.word	_Label_3045
	.word	-80
	.word	4
	.word	_Label_3046
	.word	-84
	.word	4
	.word	_Label_3047
	.word	-88
	.word	4
	.word	_Label_3048
	.word	-92
	.word	4
	.word	_Label_3049
	.word	-96
	.word	4
	.word	_Label_3050
	.word	-100
	.word	4
	.word	_Label_3051
	.word	-104
	.word	4
	.word	_Label_3052
	.word	-108
	.word	4
	.word	_Label_3053
	.word	-112
	.word	4
	.word	_Label_3054
	.word	-116
	.word	4
	.word	_Label_3055
	.word	-120
	.word	4
	.word	_Label_3056
	.word	-124
	.word	4
	.word	_Label_3057
	.word	-128
	.word	4
	.word	_Label_3058
	.word	-132
	.word	4
	.word	_Label_3059
	.word	-136
	.word	4
	.word	_Label_3060
	.word	-140
	.word	4
	.word	_Label_3061
	.word	-144
	.word	4
	.word	_Label_3062
	.word	-148
	.word	4
	.word	_Label_3063
	.word	-152
	.word	4
	.word	_Label_3064
	.word	-156
	.word	4
	.word	_Label_3065
	.word	-160
	.word	4
	.word	_Label_3066
	.word	-164
	.word	4
	.word	_Label_3067
	.word	-168
	.word	4
	.word	_Label_3068
	.word	-172
	.word	4
	.word	_Label_3069
	.word	-176
	.word	4
	.word	_Label_3070
	.word	-180
	.word	4
	.word	_Label_3071
	.word	-184
	.word	4
	.word	_Label_3072
	.word	-188
	.word	4
	.word	_Label_3073
	.word	-192
	.word	4
	.word	_Label_3074
	.word	-196
	.word	4
	.word	_Label_3075
	.word	-200
	.word	4
	.word	_Label_3076
	.word	-204
	.word	4
	.word	_Label_3077
	.word	-208
	.word	4
	.word	_Label_3078
	.word	-212
	.word	4
	.word	_Label_3079
	.word	-216
	.word	4
	.word	_Label_3080
	.word	-220
	.word	4
	.word	_Label_3081
	.word	-224
	.word	4
	.word	_Label_3082
	.word	-228
	.word	4
	.word	_Label_3083
	.word	-232
	.word	4
	.word	_Label_3084
	.word	-236
	.word	4
	.word	_Label_3085
	.word	-240
	.word	4
	.word	_Label_3086
	.word	-244
	.word	4
	.word	_Label_3087
	.word	-248
	.word	4
	.word	_Label_3088
	.word	-252
	.word	4
	.word	_Label_3089
	.word	-256
	.word	4
	.word	_Label_3090
	.word	-260
	.word	4
	.word	_Label_3091
	.word	-264
	.word	4
	.word	_Label_3092
	.word	-268
	.word	4
	.word	0
_Label_3024:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3025:
	.ascii	"Pself\0"
	.align
_Label_3026:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3034:
	.byte	'C'
	.ascii	"_temp_3014\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3044:
	.byte	'C'
	.ascii	"_temp_2996\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_3081:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3082:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3083:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3084:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3086:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3087:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3088:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3089:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3090:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
