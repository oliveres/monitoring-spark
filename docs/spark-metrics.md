curl -s localhost:9100/metrics
# HELP go_gc_duration_seconds A summary of the wall-time pause (stop-the-world) duration in garbage collection cycles.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 1.032e-05
go_gc_duration_seconds{quantile="0.25"} 2.2448e-05
go_gc_duration_seconds{quantile="0.5"} 2.8896e-05
go_gc_duration_seconds{quantile="0.75"} 3.5296e-05
go_gc_duration_seconds{quantile="1"} 5.664e-05
go_gc_duration_seconds_sum 0.088639076
go_gc_duration_seconds_count 2996
# HELP go_gc_gogc_percent Heap size target percentage configured by the user, otherwise 100. This value is set by the GOGC environment variable, and the runtime/debug.SetGCPercent function. Sourced from /gc/gogc:percent.
# TYPE go_gc_gogc_percent gauge
go_gc_gogc_percent 100
# HELP go_gc_gomemlimit_bytes Go runtime memory limit configured by the user, otherwise math.MaxInt64. This value is set by the GOMEMLIMIT environment variable, and the runtime/debug.SetMemoryLimit function. Sourced from /gc/gomemlimit:bytes.
# TYPE go_gc_gomemlimit_bytes gauge
go_gc_gomemlimit_bytes 9.223372036854776e+18
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 8
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.26.1"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated in heap and currently in use. Equals to /memory/classes/heap/objects:bytes.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 1.84304e+06
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated in heap until now, even if released already. Equals to /gc/heap/allocs:bytes.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 5.258018696e+09
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table. Equals to /memory/classes/profiling/buckets:bytes.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.856345e+06
# HELP go_memstats_frees_total Total number of heap objects frees. Equals to /gc/heap/frees:objects + /gc/heap/tiny/allocs:objects.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 5.3941959e+07
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata. Equals to /memory/classes/metadata/other:bytes.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 3.40504e+06
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and currently in use, same as go_memstats_alloc_bytes. Equals to /memory/classes/heap/objects:bytes.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 1.84304e+06
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used. Equals to /memory/classes/heap/released:bytes + /memory/classes/heap/free:bytes.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 8.56064e+06
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use. Equals to /memory/classes/heap/objects:bytes + /memory/classes/heap/unused:bytes
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 3.39968e+06
# HELP go_memstats_heap_objects Number of currently allocated objects. Equals to /gc/heap/objects:objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 5133
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS. Equals to /memory/classes/heap/released:bytes.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 6.7584e+06
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system. Equals to /memory/classes/heap/objects:bytes + /memory/classes/heap/unused:bytes + /memory/classes/heap/released:bytes + /memory/classes/heap/free:bytes.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 1.196032e+07
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.7762819816884613e+09
# HELP go_memstats_mallocs_total Total number of heap objects allocated, both live and gc-ed. Semantically a counter version for go_memstats_heap_objects gauge. Equals to /gc/heap/allocs:objects + /gc/heap/tiny/allocs:objects.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 5.3947092e+07
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures. Equals to /memory/classes/metadata/mcache/inuse:bytes.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 2296
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system. Equals to /memory/classes/metadata/mcache/inuse:bytes + /memory/classes/metadata/mcache/free:bytes.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 48216
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures. Equals to /memory/classes/metadata/mspan/inuse:bytes.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 60160
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system. Equals to /memory/classes/metadata/mspan/inuse:bytes + /memory/classes/metadata/mspan/free:bytes.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 97920
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place. Equals to /gc/heap/goal:bytes.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 4.194304e+06
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations. Equals to /memory/classes/other:bytes.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 980455
# HELP go_memstats_stack_inuse_bytes Number of bytes obtained from system for stack allocator in non-CGO environments. Equals to /memory/classes/heap/stacks:bytes.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 622592
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator. Equals to /memory/classes/heap/stacks:bytes + /memory/classes/os-stacks:bytes.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 622592
# HELP go_memstats_sys_bytes Number of bytes obtained from system. Equals to /memory/classes/total:byte.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 1.8970888e+07
# HELP go_sched_gomaxprocs_threads The current runtime.GOMAXPROCS setting, or the number of operating system threads that can execute user-level Go code simultaneously. Sourced from /sched/gomaxprocs:threads.
# TYPE go_sched_gomaxprocs_threads gauge
go_sched_gomaxprocs_threads 1
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 8
# HELP node_arp_entries ARP entries by device
# TYPE node_arp_entries gauge
node_arp_entries{device="br-0a4a83ec6201"} 1
node_arp_entries{device="br-e2e5db77c3d9"} 1
node_arp_entries{device="docker0"} 1
node_arp_entries{device="enP7s7"} 4
node_arp_entries{device="enp1s0f0np0"} 2
# HELP node_boot_time_seconds Node boot time, in unixtime.
# TYPE node_boot_time_seconds gauge
node_boot_time_seconds 1.776258304e+09
# HELP node_context_switches_total Total number of context switches.
# TYPE node_context_switches_total counter
node_context_switches_total 1.41482213e+08
# HELP node_cooling_device_cur_state Current throttle state of the cooling device
# TYPE node_cooling_device_cur_state gauge
node_cooling_device_cur_state{name="0",type="Fan"} 0
node_cooling_device_cur_state{name="1",type="Processor"} 0
node_cooling_device_cur_state{name="10",type="Processor"} 0
node_cooling_device_cur_state{name="11",type="Processor"} 0
node_cooling_device_cur_state{name="12",type="Processor"} 0
node_cooling_device_cur_state{name="13",type="Processor"} 0
node_cooling_device_cur_state{name="14",type="Processor"} 0
node_cooling_device_cur_state{name="15",type="Processor"} 0
node_cooling_device_cur_state{name="16",type="Processor"} 0
node_cooling_device_cur_state{name="17",type="Processor"} 0
node_cooling_device_cur_state{name="18",type="Processor"} 0
node_cooling_device_cur_state{name="19",type="Processor"} 0
node_cooling_device_cur_state{name="2",type="Processor"} 0
node_cooling_device_cur_state{name="20",type="Processor"} 0
node_cooling_device_cur_state{name="21",type="PCIe_Port_Link_Speed_0000:00:00.0"} 0
node_cooling_device_cur_state{name="22",type="PCIe_Port_Link_Speed_0002:00:00.0"} 0
node_cooling_device_cur_state{name="23",type="PCIe_Port_Link_Speed_0004:00:00.0"} 0
node_cooling_device_cur_state{name="24",type="PCIe_Port_Link_Speed_0007:00:00.0"} 0
node_cooling_device_cur_state{name="25",type="PCIe_Port_Link_Speed_0009:00:00.0"} 2
node_cooling_device_cur_state{name="26",type="PCIe_Port_Link_Speed_000f:00:00.0"} -231
node_cooling_device_cur_state{name="3",type="Processor"} 0
node_cooling_device_cur_state{name="4",type="Processor"} 0
node_cooling_device_cur_state{name="5",type="Processor"} 0
node_cooling_device_cur_state{name="6",type="Processor"} 0
node_cooling_device_cur_state{name="7",type="Processor"} 0
node_cooling_device_cur_state{name="8",type="Processor"} 0
node_cooling_device_cur_state{name="9",type="Processor"} 0
# HELP node_cooling_device_max_state Maximum throttle state of the cooling device
# TYPE node_cooling_device_max_state gauge
node_cooling_device_max_state{name="0",type="Fan"} 0
node_cooling_device_max_state{name="1",type="Processor"} 3
node_cooling_device_max_state{name="10",type="Processor"} 3
node_cooling_device_max_state{name="11",type="Processor"} 3
node_cooling_device_max_state{name="12",type="Processor"} 3
node_cooling_device_max_state{name="13",type="Processor"} 3
node_cooling_device_max_state{name="14",type="Processor"} 3
node_cooling_device_max_state{name="15",type="Processor"} 3
node_cooling_device_max_state{name="16",type="Processor"} 3
node_cooling_device_max_state{name="17",type="Processor"} 3
node_cooling_device_max_state{name="18",type="Processor"} 3
node_cooling_device_max_state{name="19",type="Processor"} 3
node_cooling_device_max_state{name="2",type="Processor"} 3
node_cooling_device_max_state{name="20",type="Processor"} 3
node_cooling_device_max_state{name="21",type="PCIe_Port_Link_Speed_0000:00:00.0"} 4
node_cooling_device_max_state{name="22",type="PCIe_Port_Link_Speed_0002:00:00.0"} 4
node_cooling_device_max_state{name="23",type="PCIe_Port_Link_Speed_0004:00:00.0"} 4
node_cooling_device_max_state{name="24",type="PCIe_Port_Link_Speed_0007:00:00.0"} 3
node_cooling_device_max_state{name="25",type="PCIe_Port_Link_Speed_0009:00:00.0"} 3
node_cooling_device_max_state{name="26",type="PCIe_Port_Link_Speed_000f:00:00.0"} 4
node_cooling_device_max_state{name="3",type="Processor"} 3
node_cooling_device_max_state{name="4",type="Processor"} 3
node_cooling_device_max_state{name="5",type="Processor"} 3
node_cooling_device_max_state{name="6",type="Processor"} 3
node_cooling_device_max_state{name="7",type="Processor"} 3
node_cooling_device_max_state{name="8",type="Processor"} 3
node_cooling_device_max_state{name="9",type="Processor"} 3
# HELP node_cpu_frequency_max_hertz Maximum CPU thread frequency in hertz.
# TYPE node_cpu_frequency_max_hertz gauge
node_cpu_frequency_max_hertz{cpu="0"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="1"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="10"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="11"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="12"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="13"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="14"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="15"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="16"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="17"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="18"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="19"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="2"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="3"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="4"} 2.808e+09
node_cpu_frequency_max_hertz{cpu="5"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="6"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="7"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="8"} 3.9e+09
node_cpu_frequency_max_hertz{cpu="9"} 3.9e+09
# HELP node_cpu_frequency_min_hertz Minimum CPU thread frequency in hertz.
# TYPE node_cpu_frequency_min_hertz gauge
node_cpu_frequency_min_hertz{cpu="0"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="1"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="10"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="11"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="12"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="13"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="14"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="15"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="16"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="17"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="18"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="19"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="2"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="3"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="4"} 3.38e+08
node_cpu_frequency_min_hertz{cpu="5"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="6"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="7"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="8"} 1.378e+09
node_cpu_frequency_min_hertz{cpu="9"} 1.378e+09
# HELP node_cpu_guest_seconds_total Seconds the CPUs spent in guests (VMs) for each mode.
# TYPE node_cpu_guest_seconds_total counter
node_cpu_guest_seconds_total{cpu="0",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="0",mode="user"} 0
node_cpu_guest_seconds_total{cpu="1",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="1",mode="user"} 0
node_cpu_guest_seconds_total{cpu="10",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="10",mode="user"} 0
node_cpu_guest_seconds_total{cpu="11",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="11",mode="user"} 0
node_cpu_guest_seconds_total{cpu="12",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="12",mode="user"} 0
node_cpu_guest_seconds_total{cpu="13",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="13",mode="user"} 0
node_cpu_guest_seconds_total{cpu="14",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="14",mode="user"} 0
node_cpu_guest_seconds_total{cpu="15",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="15",mode="user"} 0
node_cpu_guest_seconds_total{cpu="16",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="16",mode="user"} 0
node_cpu_guest_seconds_total{cpu="17",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="17",mode="user"} 0
node_cpu_guest_seconds_total{cpu="18",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="18",mode="user"} 0
node_cpu_guest_seconds_total{cpu="19",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="19",mode="user"} 0
node_cpu_guest_seconds_total{cpu="2",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="2",mode="user"} 0
node_cpu_guest_seconds_total{cpu="3",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="3",mode="user"} 0
node_cpu_guest_seconds_total{cpu="4",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="4",mode="user"} 0
node_cpu_guest_seconds_total{cpu="5",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="5",mode="user"} 0
node_cpu_guest_seconds_total{cpu="6",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="6",mode="user"} 0
node_cpu_guest_seconds_total{cpu="7",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="7",mode="user"} 0
node_cpu_guest_seconds_total{cpu="8",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="8",mode="user"} 0
node_cpu_guest_seconds_total{cpu="9",mode="nice"} 0
node_cpu_guest_seconds_total{cpu="9",mode="user"} 0
# HELP node_cpu_online CPUs that are online and being scheduled.
# TYPE node_cpu_online gauge
node_cpu_online{cpu="0"} 1
node_cpu_online{cpu="1"} 1
node_cpu_online{cpu="10"} 1
node_cpu_online{cpu="11"} 1
node_cpu_online{cpu="12"} 1
node_cpu_online{cpu="13"} 1
node_cpu_online{cpu="14"} 1
node_cpu_online{cpu="15"} 1
node_cpu_online{cpu="16"} 1
node_cpu_online{cpu="17"} 1
node_cpu_online{cpu="18"} 1
node_cpu_online{cpu="19"} 1
node_cpu_online{cpu="2"} 1
node_cpu_online{cpu="3"} 1
node_cpu_online{cpu="4"} 1
node_cpu_online{cpu="5"} 1
node_cpu_online{cpu="6"} 1
node_cpu_online{cpu="7"} 1
node_cpu_online{cpu="8"} 1
node_cpu_online{cpu="9"} 1
# HELP node_cpu_scaling_frequency_hertz Current scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_hertz gauge
node_cpu_scaling_frequency_hertz{cpu="0"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="1"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="10"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="11"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="12"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="13"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="14"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="15"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="16"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="17"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="18"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="19"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="2"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="3"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="4"} 2.808e+09
node_cpu_scaling_frequency_hertz{cpu="5"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="6"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="7"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="8"} 3.9e+09
node_cpu_scaling_frequency_hertz{cpu="9"} 3.9e+09
# HELP node_cpu_scaling_frequency_max_hertz Maximum scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_max_hertz gauge
node_cpu_scaling_frequency_max_hertz{cpu="0"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="1"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="10"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="11"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="12"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="13"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="14"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="15"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="16"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="17"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="18"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="19"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="2"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="3"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="4"} 2.808e+09
node_cpu_scaling_frequency_max_hertz{cpu="5"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="6"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="7"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="8"} 3.9e+09
node_cpu_scaling_frequency_max_hertz{cpu="9"} 3.9e+09
# HELP node_cpu_scaling_frequency_min_hertz Minimum scaled CPU thread frequency in hertz.
# TYPE node_cpu_scaling_frequency_min_hertz gauge
node_cpu_scaling_frequency_min_hertz{cpu="0"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="1"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="10"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="11"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="12"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="13"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="14"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="15"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="16"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="17"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="18"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="19"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="2"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="3"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="4"} 3.38e+08
node_cpu_scaling_frequency_min_hertz{cpu="5"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="6"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="7"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="8"} 1.378e+09
node_cpu_scaling_frequency_min_hertz{cpu="9"} 1.378e+09
# HELP node_cpu_scaling_governor Current enabled CPU frequency governor.
# TYPE node_cpu_scaling_governor gauge
node_cpu_scaling_governor{cpu="0",governor="conservative"} 0
node_cpu_scaling_governor{cpu="0",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="0",governor="performance"} 1
node_cpu_scaling_governor{cpu="0",governor="powersave"} 0
node_cpu_scaling_governor{cpu="0",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="0",governor="userspace"} 0
node_cpu_scaling_governor{cpu="1",governor="conservative"} 0
node_cpu_scaling_governor{cpu="1",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="1",governor="performance"} 1
node_cpu_scaling_governor{cpu="1",governor="powersave"} 0
node_cpu_scaling_governor{cpu="1",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="1",governor="userspace"} 0
node_cpu_scaling_governor{cpu="10",governor="conservative"} 0
node_cpu_scaling_governor{cpu="10",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="10",governor="performance"} 1
node_cpu_scaling_governor{cpu="10",governor="powersave"} 0
node_cpu_scaling_governor{cpu="10",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="10",governor="userspace"} 0
node_cpu_scaling_governor{cpu="11",governor="conservative"} 0
node_cpu_scaling_governor{cpu="11",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="11",governor="performance"} 1
node_cpu_scaling_governor{cpu="11",governor="powersave"} 0
node_cpu_scaling_governor{cpu="11",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="11",governor="userspace"} 0
node_cpu_scaling_governor{cpu="12",governor="conservative"} 0
node_cpu_scaling_governor{cpu="12",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="12",governor="performance"} 1
node_cpu_scaling_governor{cpu="12",governor="powersave"} 0
node_cpu_scaling_governor{cpu="12",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="12",governor="userspace"} 0
node_cpu_scaling_governor{cpu="13",governor="conservative"} 0
node_cpu_scaling_governor{cpu="13",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="13",governor="performance"} 1
node_cpu_scaling_governor{cpu="13",governor="powersave"} 0
node_cpu_scaling_governor{cpu="13",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="13",governor="userspace"} 0
node_cpu_scaling_governor{cpu="14",governor="conservative"} 0
node_cpu_scaling_governor{cpu="14",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="14",governor="performance"} 1
node_cpu_scaling_governor{cpu="14",governor="powersave"} 0
node_cpu_scaling_governor{cpu="14",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="14",governor="userspace"} 0
node_cpu_scaling_governor{cpu="15",governor="conservative"} 0
node_cpu_scaling_governor{cpu="15",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="15",governor="performance"} 1
node_cpu_scaling_governor{cpu="15",governor="powersave"} 0
node_cpu_scaling_governor{cpu="15",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="15",governor="userspace"} 0
node_cpu_scaling_governor{cpu="16",governor="conservative"} 0
node_cpu_scaling_governor{cpu="16",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="16",governor="performance"} 1
node_cpu_scaling_governor{cpu="16",governor="powersave"} 0
node_cpu_scaling_governor{cpu="16",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="16",governor="userspace"} 0
node_cpu_scaling_governor{cpu="17",governor="conservative"} 0
node_cpu_scaling_governor{cpu="17",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="17",governor="performance"} 1
node_cpu_scaling_governor{cpu="17",governor="powersave"} 0
node_cpu_scaling_governor{cpu="17",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="17",governor="userspace"} 0
node_cpu_scaling_governor{cpu="18",governor="conservative"} 0
node_cpu_scaling_governor{cpu="18",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="18",governor="performance"} 1
node_cpu_scaling_governor{cpu="18",governor="powersave"} 0
node_cpu_scaling_governor{cpu="18",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="18",governor="userspace"} 0
node_cpu_scaling_governor{cpu="19",governor="conservative"} 0
node_cpu_scaling_governor{cpu="19",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="19",governor="performance"} 1
node_cpu_scaling_governor{cpu="19",governor="powersave"} 0
node_cpu_scaling_governor{cpu="19",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="19",governor="userspace"} 0
node_cpu_scaling_governor{cpu="2",governor="conservative"} 0
node_cpu_scaling_governor{cpu="2",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="2",governor="performance"} 1
node_cpu_scaling_governor{cpu="2",governor="powersave"} 0
node_cpu_scaling_governor{cpu="2",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="2",governor="userspace"} 0
node_cpu_scaling_governor{cpu="3",governor="conservative"} 0
node_cpu_scaling_governor{cpu="3",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="3",governor="performance"} 1
node_cpu_scaling_governor{cpu="3",governor="powersave"} 0
node_cpu_scaling_governor{cpu="3",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="3",governor="userspace"} 0
node_cpu_scaling_governor{cpu="4",governor="conservative"} 0
node_cpu_scaling_governor{cpu="4",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="4",governor="performance"} 1
node_cpu_scaling_governor{cpu="4",governor="powersave"} 0
node_cpu_scaling_governor{cpu="4",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="4",governor="userspace"} 0
node_cpu_scaling_governor{cpu="5",governor="conservative"} 0
node_cpu_scaling_governor{cpu="5",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="5",governor="performance"} 1
node_cpu_scaling_governor{cpu="5",governor="powersave"} 0
node_cpu_scaling_governor{cpu="5",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="5",governor="userspace"} 0
node_cpu_scaling_governor{cpu="6",governor="conservative"} 0
node_cpu_scaling_governor{cpu="6",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="6",governor="performance"} 1
node_cpu_scaling_governor{cpu="6",governor="powersave"} 0
node_cpu_scaling_governor{cpu="6",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="6",governor="userspace"} 0
node_cpu_scaling_governor{cpu="7",governor="conservative"} 0
node_cpu_scaling_governor{cpu="7",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="7",governor="performance"} 1
node_cpu_scaling_governor{cpu="7",governor="powersave"} 0
node_cpu_scaling_governor{cpu="7",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="7",governor="userspace"} 0
node_cpu_scaling_governor{cpu="8",governor="conservative"} 0
node_cpu_scaling_governor{cpu="8",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="8",governor="performance"} 1
node_cpu_scaling_governor{cpu="8",governor="powersave"} 0
node_cpu_scaling_governor{cpu="8",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="8",governor="userspace"} 0
node_cpu_scaling_governor{cpu="9",governor="conservative"} 0
node_cpu_scaling_governor{cpu="9",governor="ondemand"} 0
node_cpu_scaling_governor{cpu="9",governor="performance"} 1
node_cpu_scaling_governor{cpu="9",governor="powersave"} 0
node_cpu_scaling_governor{cpu="9",governor="schedutil"} 0
node_cpu_scaling_governor{cpu="9",governor="userspace"} 0
# HELP node_cpu_seconds_total Seconds the CPUs spent in each mode.
# TYPE node_cpu_seconds_total counter
node_cpu_seconds_total{cpu="0",mode="idle"} 23229.62
node_cpu_seconds_total{cpu="0",mode="iowait"} 11.27
node_cpu_seconds_total{cpu="0",mode="irq"} 0
node_cpu_seconds_total{cpu="0",mode="nice"} 3.04
node_cpu_seconds_total{cpu="0",mode="softirq"} 11.26
node_cpu_seconds_total{cpu="0",mode="steal"} 0
node_cpu_seconds_total{cpu="0",mode="system"} 218.65
node_cpu_seconds_total{cpu="0",mode="user"} 123.83
node_cpu_seconds_total{cpu="1",mode="idle"} 22808.49
node_cpu_seconds_total{cpu="1",mode="iowait"} 9.49
node_cpu_seconds_total{cpu="1",mode="irq"} 0
node_cpu_seconds_total{cpu="1",mode="nice"} 2.79
node_cpu_seconds_total{cpu="1",mode="softirq"} 49.79
node_cpu_seconds_total{cpu="1",mode="steal"} 0
node_cpu_seconds_total{cpu="1",mode="system"} 177.86
node_cpu_seconds_total{cpu="1",mode="user"} 113.01
node_cpu_seconds_total{cpu="10",mode="idle"} 23361.61
node_cpu_seconds_total{cpu="10",mode="iowait"} 14.54
node_cpu_seconds_total{cpu="10",mode="irq"} 0
node_cpu_seconds_total{cpu="10",mode="nice"} 2.27
node_cpu_seconds_total{cpu="10",mode="softirq"} 0.63
node_cpu_seconds_total{cpu="10",mode="steal"} 0
node_cpu_seconds_total{cpu="10",mode="system"} 162.38
node_cpu_seconds_total{cpu="10",mode="user"} 98.3
node_cpu_seconds_total{cpu="11",mode="idle"} 23347.77
node_cpu_seconds_total{cpu="11",mode="iowait"} 15.8
node_cpu_seconds_total{cpu="11",mode="irq"} 0
node_cpu_seconds_total{cpu="11",mode="nice"} 2.63
node_cpu_seconds_total{cpu="11",mode="softirq"} 0.51
node_cpu_seconds_total{cpu="11",mode="steal"} 0
node_cpu_seconds_total{cpu="11",mode="system"} 165.48
node_cpu_seconds_total{cpu="11",mode="user"} 107.34
node_cpu_seconds_total{cpu="12",mode="idle"} 23328.59
node_cpu_seconds_total{cpu="12",mode="iowait"} 14.19
node_cpu_seconds_total{cpu="12",mode="irq"} 0
node_cpu_seconds_total{cpu="12",mode="nice"} 3.13
node_cpu_seconds_total{cpu="12",mode="softirq"} 0.58
node_cpu_seconds_total{cpu="12",mode="steal"} 0
node_cpu_seconds_total{cpu="12",mode="system"} 167.38
node_cpu_seconds_total{cpu="12",mode="user"} 123.44
node_cpu_seconds_total{cpu="13",mode="idle"} 22029.98
node_cpu_seconds_total{cpu="13",mode="iowait"} 7.81
node_cpu_seconds_total{cpu="13",mode="irq"} 0
node_cpu_seconds_total{cpu="13",mode="nice"} 3.14
node_cpu_seconds_total{cpu="13",mode="softirq"} 125.66
node_cpu_seconds_total{cpu="13",mode="steal"} 0
node_cpu_seconds_total{cpu="13",mode="system"} 233.79
node_cpu_seconds_total{cpu="13",mode="user"} 183.96
node_cpu_seconds_total{cpu="14",mode="idle"} 23200.3
node_cpu_seconds_total{cpu="14",mode="iowait"} 7.37
node_cpu_seconds_total{cpu="14",mode="irq"} 0
node_cpu_seconds_total{cpu="14",mode="nice"} 2.98
node_cpu_seconds_total{cpu="14",mode="softirq"} 0.82
node_cpu_seconds_total{cpu="14",mode="steal"} 0
node_cpu_seconds_total{cpu="14",mode="system"} 223.92
node_cpu_seconds_total{cpu="14",mode="user"} 160.85
node_cpu_seconds_total{cpu="15",mode="idle"} 22820.54
node_cpu_seconds_total{cpu="15",mode="iowait"} 17.15
node_cpu_seconds_total{cpu="15",mode="irq"} 0
node_cpu_seconds_total{cpu="15",mode="nice"} 20.64
node_cpu_seconds_total{cpu="15",mode="softirq"} 1.03
node_cpu_seconds_total{cpu="15",mode="steal"} 0
node_cpu_seconds_total{cpu="15",mode="system"} 237.09
node_cpu_seconds_total{cpu="15",mode="user"} 509.13
node_cpu_seconds_total{cpu="16",mode="idle"} 23092.4
node_cpu_seconds_total{cpu="16",mode="iowait"} 15.78
node_cpu_seconds_total{cpu="16",mode="irq"} 0
node_cpu_seconds_total{cpu="16",mode="nice"} 9.31
node_cpu_seconds_total{cpu="16",mode="softirq"} 0.63
node_cpu_seconds_total{cpu="16",mode="steal"} 0
node_cpu_seconds_total{cpu="16",mode="system"} 216.36
node_cpu_seconds_total{cpu="16",mode="user"} 277.33
node_cpu_seconds_total{cpu="17",mode="idle"} 23179.53
node_cpu_seconds_total{cpu="17",mode="iowait"} 13.34
node_cpu_seconds_total{cpu="17",mode="irq"} 0
node_cpu_seconds_total{cpu="17",mode="nice"} 12.47
node_cpu_seconds_total{cpu="17",mode="softirq"} 0.57
node_cpu_seconds_total{cpu="17",mode="steal"} 0
node_cpu_seconds_total{cpu="17",mode="system"} 202.55
node_cpu_seconds_total{cpu="17",mode="user"} 216.79
node_cpu_seconds_total{cpu="18",mode="idle"} 23184.22
node_cpu_seconds_total{cpu="18",mode="iowait"} 12.9
node_cpu_seconds_total{cpu="18",mode="irq"} 0
node_cpu_seconds_total{cpu="18",mode="nice"} 45.77
node_cpu_seconds_total{cpu="18",mode="softirq"} 0.6
node_cpu_seconds_total{cpu="18",mode="steal"} 0
node_cpu_seconds_total{cpu="18",mode="system"} 196.95
node_cpu_seconds_total{cpu="18",mode="user"} 195.7
node_cpu_seconds_total{cpu="19",mode="idle"} 23222.82
node_cpu_seconds_total{cpu="19",mode="iowait"} 8.79
node_cpu_seconds_total{cpu="19",mode="irq"} 0
node_cpu_seconds_total{cpu="19",mode="nice"} 37.06
node_cpu_seconds_total{cpu="19",mode="softirq"} 0.58
node_cpu_seconds_total{cpu="19",mode="steal"} 0
node_cpu_seconds_total{cpu="19",mode="system"} 177.58
node_cpu_seconds_total{cpu="19",mode="user"} 194.91
node_cpu_seconds_total{cpu="2",mode="idle"} 23324.94
node_cpu_seconds_total{cpu="2",mode="iowait"} 15.68
node_cpu_seconds_total{cpu="2",mode="irq"} 0
node_cpu_seconds_total{cpu="2",mode="nice"} 3.79
node_cpu_seconds_total{cpu="2",mode="softirq"} 0.68
node_cpu_seconds_total{cpu="2",mode="steal"} 0
node_cpu_seconds_total{cpu="2",mode="system"} 171.22
node_cpu_seconds_total{cpu="2",mode="user"} 114.61
node_cpu_seconds_total{cpu="3",mode="idle"} 23363.06
node_cpu_seconds_total{cpu="3",mode="iowait"} 8.59
node_cpu_seconds_total{cpu="3",mode="irq"} 0
node_cpu_seconds_total{cpu="3",mode="nice"} 2.66
node_cpu_seconds_total{cpu="3",mode="softirq"} 0.44
node_cpu_seconds_total{cpu="3",mode="steal"} 0
node_cpu_seconds_total{cpu="3",mode="system"} 164.88
node_cpu_seconds_total{cpu="3",mode="user"} 94.78
node_cpu_seconds_total{cpu="4",mode="idle"} 23274.94
node_cpu_seconds_total{cpu="4",mode="iowait"} 12.35
node_cpu_seconds_total{cpu="4",mode="irq"} 0
node_cpu_seconds_total{cpu="4",mode="nice"} 3.18
node_cpu_seconds_total{cpu="4",mode="softirq"} 5.15
node_cpu_seconds_total{cpu="4",mode="steal"} 0
node_cpu_seconds_total{cpu="4",mode="system"} 169.18
node_cpu_seconds_total{cpu="4",mode="user"} 131.2
node_cpu_seconds_total{cpu="5",mode="idle"} 22975.6
node_cpu_seconds_total{cpu="5",mode="iowait"} 19.28
node_cpu_seconds_total{cpu="5",mode="irq"} 0
node_cpu_seconds_total{cpu="5",mode="nice"} 7.86
node_cpu_seconds_total{cpu="5",mode="softirq"} 3.18
node_cpu_seconds_total{cpu="5",mode="steal"} 0
node_cpu_seconds_total{cpu="5",mode="system"} 198.24
node_cpu_seconds_total{cpu="5",mode="user"} 439.57
node_cpu_seconds_total{cpu="6",mode="idle"} 23124.98
node_cpu_seconds_total{cpu="6",mode="iowait"} 37.53
node_cpu_seconds_total{cpu="6",mode="irq"} 0
node_cpu_seconds_total{cpu="6",mode="nice"} 24.45
node_cpu_seconds_total{cpu="6",mode="softirq"} 2.05
node_cpu_seconds_total{cpu="6",mode="steal"} 0
node_cpu_seconds_total{cpu="6",mode="system"} 193.84
node_cpu_seconds_total{cpu="6",mode="user"} 260.4
node_cpu_seconds_total{cpu="7",mode="idle"} 23113.27
node_cpu_seconds_total{cpu="7",mode="iowait"} 33.05
node_cpu_seconds_total{cpu="7",mode="irq"} 0
node_cpu_seconds_total{cpu="7",mode="nice"} 18.71
node_cpu_seconds_total{cpu="7",mode="softirq"} 1.99
node_cpu_seconds_total{cpu="7",mode="steal"} 0
node_cpu_seconds_total{cpu="7",mode="system"} 190.28
node_cpu_seconds_total{cpu="7",mode="user"} 285.89
node_cpu_seconds_total{cpu="8",mode="idle"} 23196.45
node_cpu_seconds_total{cpu="8",mode="iowait"} 21.85
node_cpu_seconds_total{cpu="8",mode="irq"} 0
node_cpu_seconds_total{cpu="8",mode="nice"} 6.79
node_cpu_seconds_total{cpu="8",mode="softirq"} 1.46
node_cpu_seconds_total{cpu="8",mode="steal"} 0
node_cpu_seconds_total{cpu="8",mode="system"} 182.05
node_cpu_seconds_total{cpu="8",mode="user"} 235.75
node_cpu_seconds_total{cpu="9",mode="idle"} 23188.22
node_cpu_seconds_total{cpu="9",mode="iowait"} 20.59
node_cpu_seconds_total{cpu="9",mode="irq"} 0
node_cpu_seconds_total{cpu="9",mode="nice"} 7.94
node_cpu_seconds_total{cpu="9",mode="softirq"} 1.45
node_cpu_seconds_total{cpu="9",mode="steal"} 0
node_cpu_seconds_total{cpu="9",mode="system"} 173.21
node_cpu_seconds_total{cpu="9",mode="user"} 261.39
# HELP node_disk_discard_time_seconds_total This is the total number of seconds spent by all discards.
# TYPE node_disk_discard_time_seconds_total counter
node_disk_discard_time_seconds_total{device="nvme0n1"} 0
# HELP node_disk_discarded_sectors_total The total number of sectors discarded successfully.
# TYPE node_disk_discarded_sectors_total counter
node_disk_discarded_sectors_total{device="nvme0n1"} 0
# HELP node_disk_discards_completed_total The total number of discards completed successfully.
# TYPE node_disk_discards_completed_total counter
node_disk_discards_completed_total{device="nvme0n1"} 0
# HELP node_disk_discards_merged_total The total number of discards merged.
# TYPE node_disk_discards_merged_total counter
node_disk_discards_merged_total{device="nvme0n1"} 0
# HELP node_disk_flush_requests_time_seconds_total This is the total number of seconds spent by all flush requests.
# TYPE node_disk_flush_requests_time_seconds_total counter
node_disk_flush_requests_time_seconds_total{device="nvme0n1"} 20.329
# HELP node_disk_flush_requests_total The total number of flush requests completed successfully
# TYPE node_disk_flush_requests_total counter
node_disk_flush_requests_total{device="nvme0n1"} 22399
# HELP node_disk_info Info of /sys/block/<block_device>.
# TYPE node_disk_info gauge
node_disk_info{device="nvme0n1",major="259",minor="0",model="",path="",revision="",rotational="0",serial="",wwn=""} 1
# HELP node_disk_io_now The number of I/Os currently in progress.
# TYPE node_disk_io_now gauge
node_disk_io_now{device="nvme0n1"} 0
# HELP node_disk_io_time_seconds_total Total seconds spent doing I/Os.
# TYPE node_disk_io_time_seconds_total counter
node_disk_io_time_seconds_total{device="nvme0n1"} 313.617
# HELP node_disk_io_time_weighted_seconds_total The weighted # of seconds spent doing I/Os.
# TYPE node_disk_io_time_weighted_seconds_total counter
node_disk_io_time_weighted_seconds_total{device="nvme0n1"} 13151.008
# HELP node_disk_read_bytes_total The total number of bytes read successfully.
# TYPE node_disk_read_bytes_total counter
node_disk_read_bytes_total{device="nvme0n1"} 1.85383963648e+11
# HELP node_disk_read_time_seconds_total The total number of seconds spent by all reads.
# TYPE node_disk_read_time_seconds_total counter
node_disk_read_time_seconds_total{device="nvme0n1"} 382.086
# HELP node_disk_reads_completed_total The total number of reads completed successfully.
# TYPE node_disk_reads_completed_total counter
node_disk_reads_completed_total{device="nvme0n1"} 1.726093e+06
# HELP node_disk_reads_merged_total The total number of reads merged.
# TYPE node_disk_reads_merged_total counter
node_disk_reads_merged_total{device="nvme0n1"} 86719
# HELP node_disk_write_time_seconds_total This is the total number of seconds spent by all writes.
# TYPE node_disk_write_time_seconds_total counter
node_disk_write_time_seconds_total{device="nvme0n1"} 12748.593
# HELP node_disk_writes_completed_total The total number of writes completed successfully.
# TYPE node_disk_writes_completed_total counter
node_disk_writes_completed_total{device="nvme0n1"} 2.440971e+06
# HELP node_disk_writes_merged_total The number of writes merged.
# TYPE node_disk_writes_merged_total counter
node_disk_writes_merged_total{device="nvme0n1"} 1.356069e+06
# HELP node_disk_written_bytes_total The total number of bytes written successfully.
# TYPE node_disk_written_bytes_total counter
node_disk_written_bytes_total{device="nvme0n1"} 2.96991364096e+11
# HELP node_dmi_info A metric with a constant '1' value labeled by bios_date, bios_release, bios_vendor, bios_version, board_asset_tag, board_name, board_serial, board_vendor, board_version, chassis_asset_tag, chassis_serial, chassis_vendor, chassis_version, product_family, product_name, product_serial, product_sku, product_uuid, product_version, system_vendor if provided by DMI.
# TYPE node_dmi_info gauge
node_dmi_info{bios_date="11/07/2025",bios_release="5.36",bios_vendor="American Megatrends International, LLC.",bios_version="5.36_0ACUM05",board_asset_tag="NONE",board_name="P4242",board_vendor="PEGA",board_version="110",chassis_asset_tag="None",chassis_vendor="NVIDIA",chassis_version="A00",product_family="DGX Spark",product_name="AI TOP ATOM",product_sku="0000",product_version="B.1",system_vendor="GIGABYTE"} 1
# HELP node_entropy_available_bits Bits of available entropy.
# TYPE node_entropy_available_bits gauge
node_entropy_available_bits 256
# HELP node_entropy_pool_size_bits Bits of entropy pool.
# TYPE node_entropy_pool_size_bits gauge
node_entropy_pool_size_bits 256
# HELP node_exporter_build_info A metric with a constant '1' value labeled by version, revision, branch, goversion from which node_exporter was built, and the goos and goarch for the build.
# TYPE node_exporter_build_info gauge
node_exporter_build_info{branch="HEAD",goarch="arm64",goos="linux",goversion="go1.26.1",revision="0dd664dece3f8319f6bec5a221acd2c7ad13a23d",tags="unknown",version="1.11.1"} 1
# HELP node_filefd_allocated File descriptor statistics: allocated.
# TYPE node_filefd_allocated gauge
node_filefd_allocated 4386
# HELP node_filefd_maximum File descriptor statistics: maximum.
# TYPE node_filefd_maximum gauge
node_filefd_maximum 9.223372036854776e+18
# HELP node_filesystem_avail_bytes Filesystem space available to non-root users in bytes.
# TYPE node_filesystem_avail_bytes gauge
node_filesystem_avail_bytes{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 5.29125376e+08
node_filesystem_avail_bytes{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 3.582135537664e+12
node_filesystem_avail_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 1.2849004544e+10
node_filesystem_avail_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 5.234688e+06
node_filesystem_avail_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 1.2849004544e+10
node_filesystem_avail_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 1.2851974144e+10
# HELP node_filesystem_device_error Whether an error occurred while getting statistics for the given device.
# TYPE node_filesystem_device_error gauge
node_filesystem_device_error{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_device_error{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 0
node_filesystem_device_error{device="portal",device_error="permission denied",fstype="fuse.portal",mountpoint="/run/user/1000/doc"} 1
node_filesystem_device_error{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 0
node_filesystem_device_error{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 0
node_filesystem_device_error{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 0
node_filesystem_device_error{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 0
# HELP node_filesystem_files Filesystem total file nodes.
# TYPE node_filesystem_files gauge
node_filesystem_files{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_files{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 2.5001984e+08
node_filesystem_files{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 1.5688566e+07
node_filesystem_files{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 1.5688566e+07
node_filesystem_files{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 1.5688566e+07
node_filesystem_files{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 3.137713e+06
# HELP node_filesystem_files_free Filesystem total free file nodes.
# TYPE node_filesystem_files_free gauge
node_filesystem_files_free{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_files_free{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 2.49365036e+08
node_filesystem_files_free{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 1.5687055e+07
node_filesystem_files_free{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 1.5688561e+07
node_filesystem_files_free{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 1.5687055e+07
node_filesystem_files_free{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 3.137615e+06
# HELP node_filesystem_free_bytes Filesystem free space in bytes.
# TYPE node_filesystem_free_bytes gauge
node_filesystem_free_bytes{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 5.29125376e+08
node_filesystem_free_bytes{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 3.786965630976e+12
node_filesystem_free_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 1.2849004544e+10
node_filesystem_free_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 5.234688e+06
node_filesystem_free_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 1.2849004544e+10
node_filesystem_free_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 1.2851974144e+10
# HELP node_filesystem_mount_info Filesystem mount information.
# TYPE node_filesystem_mount_info gauge
node_filesystem_mount_info{device="/dev/nvme0n1p1",major="259",minor="1",mountpoint="/boot/efi"} 1
node_filesystem_mount_info{device="/dev/nvme0n1p2",major="259",minor="2",mountpoint="/"} 1
node_filesystem_mount_info{device="tmpfs",major="0",minor="28",mountpoint="/run"} 1
node_filesystem_mount_info{device="tmpfs",major="0",minor="28",mountpoint="/run/snapd/ns"} 1
node_filesystem_mount_info{device="tmpfs",major="0",minor="31",mountpoint="/run/lock"} 1
node_filesystem_mount_info{device="tmpfs",major="0",minor="54",mountpoint="/run/user/1000"} 1
# HELP node_filesystem_purgeable_bytes Filesystem space available including purgeable space (MacOS specific).
# TYPE node_filesystem_purgeable_bytes gauge
node_filesystem_purgeable_bytes{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_purgeable_bytes{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 0
node_filesystem_purgeable_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 0
node_filesystem_purgeable_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 0
node_filesystem_purgeable_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 0
node_filesystem_purgeable_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 0
# HELP node_filesystem_readonly Filesystem read-only status.
# TYPE node_filesystem_readonly gauge
node_filesystem_readonly{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 0
node_filesystem_readonly{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 0
node_filesystem_readonly{device="portal",device_error="permission denied",fstype="fuse.portal",mountpoint="/run/user/1000/doc"} 0
node_filesystem_readonly{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 0
node_filesystem_readonly{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 0
node_filesystem_readonly{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 0
node_filesystem_readonly{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 0
# HELP node_filesystem_size_bytes Filesystem size in bytes.
# TYPE node_filesystem_size_bytes gauge
node_filesystem_size_bytes{device="/dev/nvme0n1p1",device_error="",fstype="vfat",mountpoint="/boot/efi"} 5.35805952e+08
node_filesystem_size_bytes{device="/dev/nvme0n1p2",device_error="",fstype="ext4",mountpoint="/"} 4.030802149376e+12
node_filesystem_size_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run"} 1.2852076544e+10
node_filesystem_size_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/lock"} 5.24288e+06
node_filesystem_size_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/snapd/ns"} 1.2852076544e+10
node_filesystem_size_bytes{device="tmpfs",device_error="",fstype="tmpfs",mountpoint="/run/user/1000"} 1.2852072448e+10
# HELP node_forks_total Total number of forks.
# TYPE node_forks_total counter
node_forks_total 274918
# HELP node_hwmon_chip_names Annotation metric for human-readable chip names
# TYPE node_hwmon_chip_names gauge
node_hwmon_chip_names{chip="0000:00:00_0_0000:01:00_0",chip_name="mlx5"} 1
node_hwmon_chip_names{chip="0000:00:00_0_0000:01:00_1",chip_name="mlx5"} 1
node_hwmon_chip_names{chip="0002:00:00_0_0002:01:00_0",chip_name="mlx5"} 1
node_hwmon_chip_names{chip="0002:00:00_0_0002:01:00_1",chip_name="mlx5"} 1
node_hwmon_chip_names{chip="ieee80211_phy0",chip_name="mt7925_phy0"} 1
node_hwmon_chip_names{chip="nvme_nvme0",chip_name="nvme"} 1
node_hwmon_chip_names{chip="platform_pnp0c0b:00",chip_name="acpi_fan"} 1
node_hwmon_chip_names{chip="thermal_thermal_zone0",chip_name="acpitz"} 1
# HELP node_hwmon_fan_rpm Hardware monitor for fan revolutions per minute (input)
# TYPE node_hwmon_fan_rpm gauge
node_hwmon_fan_rpm{chip="platform_pnp0c0b:00",sensor="fan1"} 2
# HELP node_hwmon_fan_target_rpm Hardware monitor for fan revolutions per minute (target)
# TYPE node_hwmon_fan_target_rpm gauge
node_hwmon_fan_target_rpm{chip="platform_pnp0c0b:00",sensor="fan1"} 3
# HELP node_hwmon_power_watt Hardware monitor for power usage in watts (input)
# TYPE node_hwmon_power_watt gauge
node_hwmon_power_watt{chip="platform_pnp0c0b:00",sensor="power1"} 0.005
# HELP node_hwmon_sensor_label Label for given chip and sensor
# TYPE node_hwmon_sensor_label gauge
node_hwmon_sensor_label{chip="0000:00:00_0_0000:01:00_0",label="asic",sensor="temp1"} 1
node_hwmon_sensor_label{chip="0000:00:00_0_0000:01:00_1",label="asic",sensor="temp1"} 1
node_hwmon_sensor_label{chip="0002:00:00_0_0002:01:00_0",label="asic",sensor="temp1"} 1
node_hwmon_sensor_label{chip="0002:00:00_0_0002:01:00_1",label="asic",sensor="temp1"} 1
node_hwmon_sensor_label{chip="nvme_nvme0",label="Composite",sensor="temp1"} 1
node_hwmon_sensor_label{chip="nvme_nvme0",label="Sensor 1",sensor="temp2"} 1
node_hwmon_sensor_label{chip="nvme_nvme0",label="Sensor 2",sensor="temp3"} 1
# HELP node_hwmon_temp_alarm Hardware sensor alarm status (temp)
# TYPE node_hwmon_temp_alarm gauge
node_hwmon_temp_alarm{chip="nvme_nvme0",sensor="temp1"} 0
# HELP node_hwmon_temp_celsius Hardware monitor for temperature (input)
# TYPE node_hwmon_temp_celsius gauge
node_hwmon_temp_celsius{chip="0000:00:00_0_0000:01:00_0",sensor="temp1"} 58
node_hwmon_temp_celsius{chip="0000:00:00_0_0000:01:00_1",sensor="temp1"} 58
node_hwmon_temp_celsius{chip="0002:00:00_0_0002:01:00_0",sensor="temp1"} 58
node_hwmon_temp_celsius{chip="0002:00:00_0_0002:01:00_1",sensor="temp1"} 58
node_hwmon_temp_celsius{chip="nvme_nvme0",sensor="temp1"} 51.85
node_hwmon_temp_celsius{chip="nvme_nvme0",sensor="temp2"} 53.85
node_hwmon_temp_celsius{chip="nvme_nvme0",sensor="temp3"} 51.85
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp0"} 54.800000000000004
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp1"} 54.800000000000004
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp2"} 52
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp3"} 52.9
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp4"} 52
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp5"} 52.9
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp6"} 54.800000000000004
node_hwmon_temp_celsius{chip="thermal_thermal_zone0",sensor="temp7"} 53.7
# HELP node_hwmon_temp_crit_celsius Hardware monitor for temperature (crit)
# TYPE node_hwmon_temp_crit_celsius gauge
node_hwmon_temp_crit_celsius{chip="0000:00:00_0_0000:01:00_0",sensor="temp1"} 105
node_hwmon_temp_crit_celsius{chip="0000:00:00_0_0000:01:00_1",sensor="temp1"} 105
node_hwmon_temp_crit_celsius{chip="0002:00:00_0_0002:01:00_0",sensor="temp1"} 105
node_hwmon_temp_crit_celsius{chip="0002:00:00_0_0002:01:00_1",sensor="temp1"} 105
node_hwmon_temp_crit_celsius{chip="nvme_nvme0",sensor="temp1"} 84.85000000000001
# HELP node_hwmon_temp_highest_celsius Hardware monitor for temperature (highest)
# TYPE node_hwmon_temp_highest_celsius gauge
node_hwmon_temp_highest_celsius{chip="0000:00:00_0_0000:01:00_0",sensor="temp1"} 86
node_hwmon_temp_highest_celsius{chip="0000:00:00_0_0000:01:00_1",sensor="temp1"} 86
node_hwmon_temp_highest_celsius{chip="0002:00:00_0_0002:01:00_0",sensor="temp1"} 86
node_hwmon_temp_highest_celsius{chip="0002:00:00_0_0002:01:00_1",sensor="temp1"} 86
# HELP node_hwmon_temp_max_celsius Hardware monitor for temperature (max)
# TYPE node_hwmon_temp_max_celsius gauge
node_hwmon_temp_max_celsius{chip="nvme_nvme0",sensor="temp1"} 82.85000000000001
node_hwmon_temp_max_celsius{chip="nvme_nvme0",sensor="temp2"} 65261.85
node_hwmon_temp_max_celsius{chip="nvme_nvme0",sensor="temp3"} 65261.85
# HELP node_hwmon_temp_min_celsius Hardware monitor for temperature (min)
# TYPE node_hwmon_temp_min_celsius gauge
node_hwmon_temp_min_celsius{chip="nvme_nvme0",sensor="temp1"} -273.15000000000003
node_hwmon_temp_min_celsius{chip="nvme_nvme0",sensor="temp2"} -273.15000000000003
node_hwmon_temp_min_celsius{chip="nvme_nvme0",sensor="temp3"} -273.15000000000003
# HELP node_infiniband_duplicate_requests_packets_total The number of received packets. A duplicate request is a request that had been previously executed.
# TYPE node_infiniband_duplicate_requests_packets_total counter
node_infiniband_duplicate_requests_packets_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_duplicate_requests_packets_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_duplicate_requests_packets_total{device="rocep1s0f0",port="1"} 0
node_infiniband_duplicate_requests_packets_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_excessive_buffer_overrun_errors_total Number of times that OverrunErrors consecutive flow control update periods occurred, each having at least one overrun error.
# TYPE node_infiniband_excessive_buffer_overrun_errors_total counter
node_infiniband_excessive_buffer_overrun_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_excessive_buffer_overrun_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_excessive_buffer_overrun_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_excessive_buffer_overrun_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_implied_nak_seq_errors_total The number of time the requested decided an ACK. with a PSN larger than the expected PSN for an RDMA read or response.
# TYPE node_infiniband_implied_nak_seq_errors_total counter
node_infiniband_implied_nak_seq_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_implied_nak_seq_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_implied_nak_seq_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_implied_nak_seq_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_info Non-numeric data from /sys/class/infiniband/<device>, value is always 1.
# TYPE node_infiniband_info gauge
node_infiniband_info{board_id="NVD0000000087",device="roceP2p1s0f0",firmware_version="28.45.4028",hca_type="MT4129"} 1
node_infiniband_info{board_id="NVD0000000087",device="roceP2p1s0f1",firmware_version="28.45.4028",hca_type="MT4129"} 1
node_infiniband_info{board_id="NVD0000000087",device="rocep1s0f0",firmware_version="28.45.4028",hca_type="MT4129"} 1
node_infiniband_info{board_id="NVD0000000087",device="rocep1s0f1",firmware_version="28.45.4028",hca_type="MT4129"} 1
# HELP node_infiniband_lifespan_seconds The maximum period in ms which defines the aging of the counter reads. Two consecutive reads within this period might return the same values.
# TYPE node_infiniband_lifespan_seconds gauge
node_infiniband_lifespan_seconds{device="roceP2p1s0f0",port="1"} 0
node_infiniband_lifespan_seconds{device="roceP2p1s0f1",port="1"} 0
node_infiniband_lifespan_seconds{device="rocep1s0f0",port="1"} 0
node_infiniband_lifespan_seconds{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_link_downed_total Number of times the link failed to recover from an error state and went down
# TYPE node_infiniband_link_downed_total counter
node_infiniband_link_downed_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_link_downed_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_link_downed_total{device="rocep1s0f0",port="1"} 0
node_infiniband_link_downed_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_link_error_recovery_total Number of times the link successfully recovered from an error state
# TYPE node_infiniband_link_error_recovery_total counter
node_infiniband_link_error_recovery_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_link_error_recovery_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_link_error_recovery_total{device="rocep1s0f0",port="1"} 0
node_infiniband_link_error_recovery_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_local_ack_timeout_errors_total The number of times QP's ack timer expired for RC, XRC, DCT QPs at the sender side. The QP retry limit was not exceed, therefore it is still recoverable error.
# TYPE node_infiniband_local_ack_timeout_errors_total counter
node_infiniband_local_ack_timeout_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_local_ack_timeout_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_local_ack_timeout_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_local_ack_timeout_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_local_link_integrity_errors_total Number of times that the count of local physical errors exceeded the threshold specified by LocalPhyErrors.
# TYPE node_infiniband_local_link_integrity_errors_total counter
node_infiniband_local_link_integrity_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_local_link_integrity_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_local_link_integrity_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_local_link_integrity_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_multicast_packets_received_total Number of multicast packets received (including errors)
# TYPE node_infiniband_multicast_packets_received_total counter
node_infiniband_multicast_packets_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_multicast_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_multicast_packets_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_multicast_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_multicast_packets_transmitted_total Number of multicast packets transmitted (including errors)
# TYPE node_infiniband_multicast_packets_transmitted_total counter
node_infiniband_multicast_packets_transmitted_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_multicast_packets_transmitted_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_multicast_packets_transmitted_total{device="rocep1s0f0",port="1"} 0
node_infiniband_multicast_packets_transmitted_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_np_cnp_packets_sent_total The number of CNP packets sent by the Notification Point when it noticed congestion experienced in the RoCEv2 IP header (ECN bits). The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_np_cnp_packets_sent_total counter
node_infiniband_np_cnp_packets_sent_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_np_cnp_packets_sent_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_np_cnp_packets_sent_total{device="rocep1s0f0",port="1"} 0
node_infiniband_np_cnp_packets_sent_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_np_ecn_marked_roce_packets_received_total The number of RoCEv2 packets received by the notification point which were marked for experiencing the congestion (ECN bits where '11' on the ingress RoCE traffic) . The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_np_ecn_marked_roce_packets_received_total counter
node_infiniband_np_ecn_marked_roce_packets_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_np_ecn_marked_roce_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_np_ecn_marked_roce_packets_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_np_ecn_marked_roce_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_out_of_buffer_drops_total The number of drops occurred due to lack of WQE for the associated QPs.
# TYPE node_infiniband_out_of_buffer_drops_total counter
node_infiniband_out_of_buffer_drops_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_out_of_buffer_drops_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_out_of_buffer_drops_total{device="rocep1s0f0",port="1"} 0
node_infiniband_out_of_buffer_drops_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_out_of_sequence_packets_received_total The number of out of sequence packets received.
# TYPE node_infiniband_out_of_sequence_packets_received_total counter
node_infiniband_out_of_sequence_packets_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_out_of_sequence_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_out_of_sequence_packets_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_out_of_sequence_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_packet_sequence_errors_total The number of received NAK sequence error packets. The QP retry limit was not exceeded.
# TYPE node_infiniband_packet_sequence_errors_total counter
node_infiniband_packet_sequence_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_packet_sequence_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_packet_sequence_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_packet_sequence_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_physical_state_id Physical state of the InfiniBand port (0: no change, 1: sleep, 2: polling, 3: disable, 4: shift, 5: link up, 6: link error recover, 7: phytest)
# TYPE node_infiniband_physical_state_id gauge
node_infiniband_physical_state_id{device="roceP2p1s0f0",port="1"} 5
node_infiniband_physical_state_id{device="roceP2p1s0f1",port="1"} 3
node_infiniband_physical_state_id{device="rocep1s0f0",port="1"} 5
node_infiniband_physical_state_id{device="rocep1s0f1",port="1"} 3
# HELP node_infiniband_port_constraint_errors_received_total Number of packets received on the switch physical port that are discarded
# TYPE node_infiniband_port_constraint_errors_received_total counter
node_infiniband_port_constraint_errors_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_constraint_errors_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_constraint_errors_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_constraint_errors_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_constraint_errors_transmitted_total Number of packets not transmitted from the switch physical port
# TYPE node_infiniband_port_constraint_errors_transmitted_total counter
node_infiniband_port_constraint_errors_transmitted_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_constraint_errors_transmitted_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_constraint_errors_transmitted_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_constraint_errors_transmitted_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_data_received_bytes_total Number of data octets received on all links
# TYPE node_infiniband_port_data_received_bytes_total counter
node_infiniband_port_data_received_bytes_total{device="roceP2p1s0f0",port="1"} 2.2031403016e+10
node_infiniband_port_data_received_bytes_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_data_received_bytes_total{device="rocep1s0f0",port="1"} 2.2447398712e+10
node_infiniband_port_data_received_bytes_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_data_transmitted_bytes_total Number of data octets transmitted on all links
# TYPE node_infiniband_port_data_transmitted_bytes_total counter
node_infiniband_port_data_transmitted_bytes_total{device="roceP2p1s0f0",port="1"} 2.203141234e+10
node_infiniband_port_data_transmitted_bytes_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_data_transmitted_bytes_total{device="rocep1s0f0",port="1"} 2.2447376952e+10
node_infiniband_port_data_transmitted_bytes_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_discards_transmitted_total Number of outbound packets discarded by the port because the port is down or congested
# TYPE node_infiniband_port_discards_transmitted_total counter
node_infiniband_port_discards_transmitted_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_discards_transmitted_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_discards_transmitted_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_discards_transmitted_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_errors_received_total Number of packets containing an error that were received on this port
# TYPE node_infiniband_port_errors_received_total counter
node_infiniband_port_errors_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_errors_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_errors_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_errors_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_packets_received_total Number of packets received on all VLs by this port (including errors)
# TYPE node_infiniband_port_packets_received_total counter
node_infiniband_port_packets_received_total{device="roceP2p1s0f0",port="1"} 2.0665436e+07
node_infiniband_port_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_packets_received_total{device="rocep1s0f0",port="1"} 2.2367955e+07
node_infiniband_port_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_packets_transmitted_total Number of packets transmitted on all VLs from this port (including errors)
# TYPE node_infiniband_port_packets_transmitted_total counter
node_infiniband_port_packets_transmitted_total{device="roceP2p1s0f0",port="1"} 2.0665562e+07
node_infiniband_port_packets_transmitted_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_packets_transmitted_total{device="rocep1s0f0",port="1"} 2.2367604e+07
node_infiniband_port_packets_transmitted_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_receive_remote_physical_errors_total Number of packets marked with the EBP (End of Bad Packet) delimiter received on the port.
# TYPE node_infiniband_port_receive_remote_physical_errors_total counter
node_infiniband_port_receive_remote_physical_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_receive_remote_physical_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_receive_remote_physical_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_receive_remote_physical_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_receive_switch_relay_errors_total Number of packets that could not be forwarded by the switch.
# TYPE node_infiniband_port_receive_switch_relay_errors_total counter
node_infiniband_port_receive_switch_relay_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_receive_switch_relay_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_receive_switch_relay_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_receive_switch_relay_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_port_transmit_wait_total Number of ticks during which the port had data to transmit but no data was sent during the entire tick
# TYPE node_infiniband_port_transmit_wait_total counter
node_infiniband_port_transmit_wait_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_port_transmit_wait_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_port_transmit_wait_total{device="rocep1s0f0",port="1"} 0
node_infiniband_port_transmit_wait_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rate_bytes_per_second Maximum signal transfer rate
# TYPE node_infiniband_rate_bytes_per_second gauge
node_infiniband_rate_bytes_per_second{device="roceP2p1s0f0",port="1"} 2.5e+10
node_infiniband_rate_bytes_per_second{device="roceP2p1s0f1",port="1"} 5e+09
node_infiniband_rate_bytes_per_second{device="rocep1s0f0",port="1"} 2.5e+10
node_infiniband_rate_bytes_per_second{device="rocep1s0f1",port="1"} 5e+09
# HELP node_infiniband_req_cqes_errors_total The number of times requester detected CQEs completed with errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_req_cqes_errors_total counter
node_infiniband_req_cqes_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_req_cqes_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_req_cqes_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_req_cqes_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_req_cqes_flush_errors_total The number of times requester detected CQEs completed with flushed errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_req_cqes_flush_errors_total counter
node_infiniband_req_cqes_flush_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_req_cqes_flush_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_req_cqes_flush_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_req_cqes_flush_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_req_remote_access_errors_total The number of times requester detected remote access errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_req_remote_access_errors_total counter
node_infiniband_req_remote_access_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_req_remote_access_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_req_remote_access_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_req_remote_access_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_req_remote_invalid_request_errors_total The number of times requester detected remote invalid request errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_req_remote_invalid_request_errors_total counter
node_infiniband_req_remote_invalid_request_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_req_remote_invalid_request_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_req_remote_invalid_request_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_req_remote_invalid_request_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_resp_cqes_errors_total The number of times responder detected CQEs completed with errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_resp_cqes_errors_total counter
node_infiniband_resp_cqes_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_resp_cqes_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_resp_cqes_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_resp_cqes_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_resp_cqes_flush_errors_total The number of times responder detected CQEs completed with flushed errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_resp_cqes_flush_errors_total counter
node_infiniband_resp_cqes_flush_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_resp_cqes_flush_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_resp_cqes_flush_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_resp_cqes_flush_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_resp_local_length_errors_total The number of times responder detected local length errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_resp_local_length_errors_total counter
node_infiniband_resp_local_length_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_resp_local_length_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_resp_local_length_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_resp_local_length_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_resp_remote_access_errors_total The number of times responder detected remote access errors. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_resp_remote_access_errors_total counter
node_infiniband_resp_remote_access_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_resp_remote_access_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_resp_remote_access_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_resp_remote_access_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rnr_nak_retry_packets_received_total The number of received RNR NAK packets. The QP retry limit was not exceeded.
# TYPE node_infiniband_rnr_nak_retry_packets_received_total counter
node_infiniband_rnr_nak_retry_packets_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rnr_nak_retry_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rnr_nak_retry_packets_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rnr_nak_retry_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_roce_adp_retransmits_timeout_total The number of times RoCE traffic reached timeout due to adaptive retransmission. The counter was added in MLNX_OFED rev 5.0-1.0.0.0 and kernel v5.6.0
# TYPE node_infiniband_roce_adp_retransmits_timeout_total counter
node_infiniband_roce_adp_retransmits_timeout_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_roce_adp_retransmits_timeout_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_roce_adp_retransmits_timeout_total{device="rocep1s0f0",port="1"} 0
node_infiniband_roce_adp_retransmits_timeout_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_roce_adp_retransmits_total The number of adaptive retransmissions for RoCE traffic. The counter was added in MLNX_OFED rev 5.0-1.0.0.0 and kernel v5.6.0
# TYPE node_infiniband_roce_adp_retransmits_total counter
node_infiniband_roce_adp_retransmits_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_roce_adp_retransmits_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_roce_adp_retransmits_total{device="rocep1s0f0",port="1"} 0
node_infiniband_roce_adp_retransmits_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_roce_slow_restart_cnps_total The number of times RoCE slow restart generated CNP packets. The counter was added in MLNX_OFED rev 5.0-1.0.0.0 and kernel v5.6.0
# TYPE node_infiniband_roce_slow_restart_cnps_total counter
node_infiniband_roce_slow_restart_cnps_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_cnps_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_roce_slow_restart_cnps_total{device="rocep1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_cnps_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_roce_slow_restart_total The number of times RoCE slow restart changed state to slow restart. The counter was added in MLNX_OFED rev 5.0-1.0.0.0 and kernel v5.6.0
# TYPE node_infiniband_roce_slow_restart_total counter
node_infiniband_roce_slow_restart_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_roce_slow_restart_total{device="rocep1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_roce_slow_restart_used_total The number of times RoCE slow restart was used. The counter was added in MLNX_OFED rev 5.0-1.0.0.0 and kernel v5.6.0
# TYPE node_infiniband_roce_slow_restart_used_total counter
node_infiniband_roce_slow_restart_used_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_used_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_roce_slow_restart_used_total{device="rocep1s0f0",port="1"} 0
node_infiniband_roce_slow_restart_used_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rp_cnp_ignored_packets_received_total The number of CNP packets received and ignored by the Reaction Point HCA. This counter should not raise if RoCE Congestion Control was enabled in the network. If this counter raise, verify that ECN was enabled on the adapter.
# TYPE node_infiniband_rp_cnp_ignored_packets_received_total counter
node_infiniband_rp_cnp_ignored_packets_received_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rp_cnp_ignored_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rp_cnp_ignored_packets_received_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rp_cnp_ignored_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rp_cnp_packets_handled_total The number of CNP packets handled by the Reaction Point HCA to throttle the transmission rate. The counters was added in MLNX_OFED 4.1
# TYPE node_infiniband_rp_cnp_packets_handled_total counter
node_infiniband_rp_cnp_packets_handled_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rp_cnp_packets_handled_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rp_cnp_packets_handled_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rp_cnp_packets_handled_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rx_atomic_requests_total The number of received ATOMIC request for the associated QPs.
# TYPE node_infiniband_rx_atomic_requests_total counter
node_infiniband_rx_atomic_requests_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rx_atomic_requests_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rx_atomic_requests_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rx_atomic_requests_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rx_dct_connect_requests_total The number of received connection requests for the associated DCTs.
# TYPE node_infiniband_rx_dct_connect_requests_total counter
node_infiniband_rx_dct_connect_requests_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rx_dct_connect_requests_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rx_dct_connect_requests_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rx_dct_connect_requests_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rx_icrc_encapsulated_errors_total The number of RoCE packets with ICRC errors. This counter was added in MLNX_OFED 4.4 and kernel 4.19
# TYPE node_infiniband_rx_icrc_encapsulated_errors_total counter
node_infiniband_rx_icrc_encapsulated_errors_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rx_icrc_encapsulated_errors_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rx_icrc_encapsulated_errors_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rx_icrc_encapsulated_errors_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rx_read_requests_total The number of received READ requests for the associated QPs.
# TYPE node_infiniband_rx_read_requests_total counter
node_infiniband_rx_read_requests_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_rx_read_requests_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rx_read_requests_total{device="rocep1s0f0",port="1"} 0
node_infiniband_rx_read_requests_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_rx_write_requests_total The number of received WRITE requests for the associated QPs.
# TYPE node_infiniband_rx_write_requests_total counter
node_infiniband_rx_write_requests_total{device="roceP2p1s0f0",port="1"} 354824
node_infiniband_rx_write_requests_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_rx_write_requests_total{device="rocep1s0f0",port="1"} 398880
node_infiniband_rx_write_requests_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_state_id State of the InfiniBand port (0: no change, 1: down, 2: init, 3: armed, 4: active, 5: act defer)
# TYPE node_infiniband_state_id gauge
node_infiniband_state_id{device="roceP2p1s0f0",port="1"} 4
node_infiniband_state_id{device="roceP2p1s0f1",port="1"} 1
node_infiniband_state_id{device="rocep1s0f0",port="1"} 4
node_infiniband_state_id{device="rocep1s0f1",port="1"} 1
# HELP node_infiniband_symbol_error_total Number of minor link errors detected on one or more physical lanes.
# TYPE node_infiniband_symbol_error_total counter
node_infiniband_symbol_error_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_symbol_error_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_symbol_error_total{device="rocep1s0f0",port="1"} 0
node_infiniband_symbol_error_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_unicast_packets_received_total Number of unicast packets received (including errors)
# TYPE node_infiniband_unicast_packets_received_total counter
node_infiniband_unicast_packets_received_total{device="roceP2p1s0f0",port="1"} 2.0665436e+07
node_infiniband_unicast_packets_received_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_unicast_packets_received_total{device="rocep1s0f0",port="1"} 2.2367955e+07
node_infiniband_unicast_packets_received_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_unicast_packets_transmitted_total Number of unicast packets transmitted (including errors)
# TYPE node_infiniband_unicast_packets_transmitted_total counter
node_infiniband_unicast_packets_transmitted_total{device="roceP2p1s0f0",port="1"} 2.0665562e+07
node_infiniband_unicast_packets_transmitted_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_unicast_packets_transmitted_total{device="rocep1s0f0",port="1"} 2.2367604e+07
node_infiniband_unicast_packets_transmitted_total{device="rocep1s0f1",port="1"} 0
# HELP node_infiniband_vl15_dropped_total Number of incoming VL15 packets dropped due to resource limitations.
# TYPE node_infiniband_vl15_dropped_total counter
node_infiniband_vl15_dropped_total{device="roceP2p1s0f0",port="1"} 0
node_infiniband_vl15_dropped_total{device="roceP2p1s0f1",port="1"} 0
node_infiniband_vl15_dropped_total{device="rocep1s0f0",port="1"} 0
node_infiniband_vl15_dropped_total{device="rocep1s0f1",port="1"} 0
# HELP node_intr_total Total number of interrupts serviced.
# TYPE node_intr_total counter
node_intr_total 2.79428001e+08
# HELP node_kernel_hung_tasks_total Total number of tasks that have been detected as hung since the system booted.
# TYPE node_kernel_hung_tasks_total counter
node_kernel_hung_tasks_total 0
# HELP node_load1 1m load average.
# TYPE node_load1 gauge
node_load1 0.37
# HELP node_load15 15m load average.
# TYPE node_load15 gauge
node_load15 0.33
# HELP node_load5 5m load average.
# TYPE node_load5 gauge
node_load5 0.36
# HELP node_memory_Active_anon_bytes Memory information field Active_anon_bytes.
# TYPE node_memory_Active_anon_bytes gauge
node_memory_Active_anon_bytes 3.351683072e+09
# HELP node_memory_Active_bytes Memory information field Active_bytes.
# TYPE node_memory_Active_bytes gauge
node_memory_Active_bytes 3.78523648e+09
# HELP node_memory_Active_file_bytes Memory information field Active_file_bytes.
# TYPE node_memory_Active_file_bytes gauge
node_memory_Active_file_bytes 4.33553408e+08
# HELP node_memory_AnonHugePages_bytes Memory information field AnonHugePages_bytes.
# TYPE node_memory_AnonHugePages_bytes gauge
node_memory_AnonHugePages_bytes 3.145728e+07
# HELP node_memory_AnonPages_bytes Memory information field AnonPages_bytes.
# TYPE node_memory_AnonPages_bytes gauge
node_memory_AnonPages_bytes 4.816105472e+09
# HELP node_memory_Bounce_bytes Memory information field Bounce_bytes.
# TYPE node_memory_Bounce_bytes gauge
node_memory_Bounce_bytes 0
# HELP node_memory_Buffers_bytes Memory information field Buffers_bytes.
# TYPE node_memory_Buffers_bytes gauge
node_memory_Buffers_bytes 3.547136e+07
# HELP node_memory_Cached_bytes Memory information field Cached_bytes.
# TYPE node_memory_Cached_bytes gauge
node_memory_Cached_bytes 7.831998464e+09
# HELP node_memory_CmaFree_bytes Memory information field CmaFree_bytes.
# TYPE node_memory_CmaFree_bytes gauge
node_memory_CmaFree_bytes 7.098368e+07
# HELP node_memory_CmaTotal_bytes Memory information field CmaTotal_bytes.
# TYPE node_memory_CmaTotal_bytes gauge
node_memory_CmaTotal_bytes 1.34217728e+08
# HELP node_memory_CommitLimit_bytes Memory information field CommitLimit_bytes.
# TYPE node_memory_CommitLimit_bytes gauge
node_memory_CommitLimit_bytes 8.1440231424e+10
# HELP node_memory_Committed_AS_bytes Memory information field Committed_AS_bytes.
# TYPE node_memory_Committed_AS_bytes gauge
node_memory_Committed_AS_bytes 2.5740705792e+10
# HELP node_memory_Dirty_bytes Memory information field Dirty_bytes.
# TYPE node_memory_Dirty_bytes gauge
node_memory_Dirty_bytes 278528
# HELP node_memory_HardwareCorrupted_bytes Memory information field HardwareCorrupted_bytes.
# TYPE node_memory_HardwareCorrupted_bytes gauge
node_memory_HardwareCorrupted_bytes 0
# HELP node_memory_HugePages_Free Memory information field HugePages_Free.
# TYPE node_memory_HugePages_Free gauge
node_memory_HugePages_Free 0
# HELP node_memory_HugePages_Rsvd Memory information field HugePages_Rsvd.
# TYPE node_memory_HugePages_Rsvd gauge
node_memory_HugePages_Rsvd 0
# HELP node_memory_HugePages_Surp Memory information field HugePages_Surp.
# TYPE node_memory_HugePages_Surp gauge
node_memory_HugePages_Surp 0
# HELP node_memory_HugePages_Total Memory information field HugePages_Total.
# TYPE node_memory_HugePages_Total gauge
node_memory_HugePages_Total 0
# HELP node_memory_Hugepagesize_bytes Memory information field Hugepagesize_bytes.
# TYPE node_memory_Hugepagesize_bytes gauge
node_memory_Hugepagesize_bytes 2.097152e+06
# HELP node_memory_Inactive_anon_bytes Memory information field Inactive_anon_bytes.
# TYPE node_memory_Inactive_anon_bytes gauge
node_memory_Inactive_anon_bytes 2.525200384e+09
# HELP node_memory_Inactive_bytes Memory information field Inactive_bytes.
# TYPE node_memory_Inactive_bytes gauge
node_memory_Inactive_bytes 8.91848704e+09
# HELP node_memory_Inactive_file_bytes Memory information field Inactive_file_bytes.
# TYPE node_memory_Inactive_file_bytes gauge
node_memory_Inactive_file_bytes 6.393286656e+09
# HELP node_memory_KernelStack_bytes Memory information field KernelStack_bytes.
# TYPE node_memory_KernelStack_bytes gauge
node_memory_KernelStack_bytes 2.8000256e+07
# HELP node_memory_Mapped_bytes Memory information field Mapped_bytes.
# TYPE node_memory_Mapped_bytes gauge
node_memory_Mapped_bytes 1.221259264e+09
# HELP node_memory_MemAvailable_bytes Memory information field MemAvailable_bytes.
# TYPE node_memory_MemAvailable_bytes gauge
node_memory_MemAvailable_bytes 7.068319744e+09
# HELP node_memory_MemFree_bytes Memory information field MemFree_bytes.
# TYPE node_memory_MemFree_bytes gauge
node_memory_MemFree_bytes 7.64649472e+08
# HELP node_memory_MemTotal_bytes Memory information field MemTotal_bytes.
# TYPE node_memory_MemTotal_bytes gauge
node_memory_MemTotal_bytes 1.28520736768e+11
# HELP node_memory_Mlocked_bytes Memory information field Mlocked_bytes.
# TYPE node_memory_Mlocked_bytes gauge
node_memory_Mlocked_bytes 2.5022464e+07
# HELP node_memory_NFS_Unstable_bytes Memory information field NFS_Unstable_bytes.
# TYPE node_memory_NFS_Unstable_bytes gauge
node_memory_NFS_Unstable_bytes 0
# HELP node_memory_PageTables_bytes Memory information field PageTables_bytes.
# TYPE node_memory_PageTables_bytes gauge
node_memory_PageTables_bytes 5.312512e+07
# HELP node_memory_Percpu_bytes Memory information field Percpu_bytes.
# TYPE node_memory_Percpu_bytes gauge
node_memory_Percpu_bytes 2.2528e+07
# HELP node_memory_SReclaimable_bytes Memory information field SReclaimable_bytes.
# TYPE node_memory_SReclaimable_bytes gauge
node_memory_SReclaimable_bytes 6.28396032e+08
# HELP node_memory_SUnreclaim_bytes Memory information field SUnreclaim_bytes.
# TYPE node_memory_SUnreclaim_bytes gauge
node_memory_SUnreclaim_bytes 1.252519936e+09
# HELP node_memory_ShmemHugePages_bytes Memory information field ShmemHugePages_bytes.
# TYPE node_memory_ShmemHugePages_bytes gauge
node_memory_ShmemHugePages_bytes 0
# HELP node_memory_ShmemPmdMapped_bytes Memory information field ShmemPmdMapped_bytes.
# TYPE node_memory_ShmemPmdMapped_bytes gauge
node_memory_ShmemPmdMapped_bytes 0
# HELP node_memory_Shmem_bytes Memory information field Shmem_bytes.
# TYPE node_memory_Shmem_bytes gauge
node_memory_Shmem_bytes 1.034866688e+09
# HELP node_memory_Slab_bytes Memory information field Slab_bytes.
# TYPE node_memory_Slab_bytes gauge
node_memory_Slab_bytes 1.880915968e+09
# HELP node_memory_SwapCached_bytes Memory information field SwapCached_bytes.
# TYPE node_memory_SwapCached_bytes gauge
node_memory_SwapCached_bytes 1.071005696e+09
# HELP node_memory_SwapFree_bytes Memory information field SwapFree_bytes.
# TYPE node_memory_SwapFree_bytes gauge
node_memory_SwapFree_bytes 1.3608574976e+10
# HELP node_memory_SwapTotal_bytes Memory information field SwapTotal_bytes.
# TYPE node_memory_SwapTotal_bytes gauge
node_memory_SwapTotal_bytes 1.7179865088e+10
# HELP node_memory_Unevictable_bytes Memory information field Unevictable_bytes.
# TYPE node_memory_Unevictable_bytes gauge
node_memory_Unevictable_bytes 2.5022464e+07
# HELP node_memory_VmallocChunk_bytes Memory information field VmallocChunk_bytes.
# TYPE node_memory_VmallocChunk_bytes gauge
node_memory_VmallocChunk_bytes 0
# HELP node_memory_VmallocTotal_bytes Memory information field VmallocTotal_bytes.
# TYPE node_memory_VmallocTotal_bytes gauge
node_memory_VmallocTotal_bytes 1.38535235485696e+14
# HELP node_memory_VmallocUsed_bytes Memory information field VmallocUsed_bytes.
# TYPE node_memory_VmallocUsed_bytes gauge
node_memory_VmallocUsed_bytes 9.14968576e+08
# HELP node_memory_WritebackTmp_bytes Memory information field WritebackTmp_bytes.
# TYPE node_memory_WritebackTmp_bytes gauge
node_memory_WritebackTmp_bytes 0
# HELP node_memory_Writeback_bytes Memory information field Writeback_bytes.
# TYPE node_memory_Writeback_bytes gauge
node_memory_Writeback_bytes 0
# HELP node_memory_Zswap_bytes Memory information field Zswap_bytes.
# TYPE node_memory_Zswap_bytes gauge
node_memory_Zswap_bytes 0
# HELP node_memory_Zswapped_bytes Memory information field Zswapped_bytes.
# TYPE node_memory_Zswapped_bytes gauge
node_memory_Zswapped_bytes 0
# HELP node_netstat_Icmp6_InErrors Statistic Icmp6InErrors.
# TYPE node_netstat_Icmp6_InErrors untyped
node_netstat_Icmp6_InErrors 3
# HELP node_netstat_Icmp6_InMsgs Statistic Icmp6InMsgs.
# TYPE node_netstat_Icmp6_InMsgs untyped
node_netstat_Icmp6_InMsgs 6823
# HELP node_netstat_Icmp6_OutMsgs Statistic Icmp6OutMsgs.
# TYPE node_netstat_Icmp6_OutMsgs untyped
node_netstat_Icmp6_OutMsgs 6144
# HELP node_netstat_Icmp_InErrors Statistic IcmpInErrors.
# TYPE node_netstat_Icmp_InErrors untyped
node_netstat_Icmp_InErrors 38916
# HELP node_netstat_Icmp_InMsgs Statistic IcmpInMsgs.
# TYPE node_netstat_Icmp_InMsgs untyped
node_netstat_Icmp_InMsgs 40143
# HELP node_netstat_Icmp_OutMsgs Statistic IcmpOutMsgs.
# TYPE node_netstat_Icmp_OutMsgs untyped
node_netstat_Icmp_OutMsgs 40410
# HELP node_netstat_Ip6_InOctets Statistic Ip6InOctets.
# TYPE node_netstat_Ip6_InOctets untyped
node_netstat_Ip6_InOctets 8.257107e+06
# HELP node_netstat_Ip6_OutOctets Statistic Ip6OutOctets.
# TYPE node_netstat_Ip6_OutOctets untyped
node_netstat_Ip6_OutOctets 4.865034e+06
# HELP node_netstat_IpExt_InOctets Statistic IpExtInOctets.
# TYPE node_netstat_IpExt_InOctets untyped
node_netstat_IpExt_InOctets 1.68833792774e+11
# HELP node_netstat_IpExt_OutOctets Statistic IpExtOutOctets.
# TYPE node_netstat_IpExt_OutOctets untyped
node_netstat_IpExt_OutOctets 1.79102161049e+11
# HELP node_netstat_Ip_Forwarding Statistic IpForwarding.
# TYPE node_netstat_Ip_Forwarding untyped
node_netstat_Ip_Forwarding 1
# HELP node_netstat_TcpExt_ListenDrops Statistic TcpExtListenDrops.
# TYPE node_netstat_TcpExt_ListenDrops untyped
node_netstat_TcpExt_ListenDrops 0
# HELP node_netstat_TcpExt_ListenOverflows Statistic TcpExtListenOverflows.
# TYPE node_netstat_TcpExt_ListenOverflows untyped
node_netstat_TcpExt_ListenOverflows 0
# HELP node_netstat_TcpExt_SyncookiesFailed Statistic TcpExtSyncookiesFailed.
# TYPE node_netstat_TcpExt_SyncookiesFailed untyped
node_netstat_TcpExt_SyncookiesFailed 0
# HELP node_netstat_TcpExt_SyncookiesRecv Statistic TcpExtSyncookiesRecv.
# TYPE node_netstat_TcpExt_SyncookiesRecv untyped
node_netstat_TcpExt_SyncookiesRecv 0
# HELP node_netstat_TcpExt_SyncookiesSent Statistic TcpExtSyncookiesSent.
# TYPE node_netstat_TcpExt_SyncookiesSent untyped
node_netstat_TcpExt_SyncookiesSent 0
# HELP node_netstat_TcpExt_TCPOFOQueue Statistic TcpExtTCPOFOQueue.
# TYPE node_netstat_TcpExt_TCPOFOQueue untyped
node_netstat_TcpExt_TCPOFOQueue 4.4694589e+07
# HELP node_netstat_TcpExt_TCPRcvQDrop Statistic TcpExtTCPRcvQDrop.
# TYPE node_netstat_TcpExt_TCPRcvQDrop untyped
node_netstat_TcpExt_TCPRcvQDrop 0
# HELP node_netstat_TcpExt_TCPSynRetrans Statistic TcpExtTCPSynRetrans.
# TYPE node_netstat_TcpExt_TCPSynRetrans untyped
node_netstat_TcpExt_TCPSynRetrans 1005
# HELP node_netstat_TcpExt_TCPTimeouts Statistic TcpExtTCPTimeouts.
# TYPE node_netstat_TcpExt_TCPTimeouts untyped
node_netstat_TcpExt_TCPTimeouts 2676
# HELP node_netstat_Tcp_ActiveOpens Statistic TcpActiveOpens.
# TYPE node_netstat_Tcp_ActiveOpens untyped
node_netstat_Tcp_ActiveOpens 95817
# HELP node_netstat_Tcp_CurrEstab Statistic TcpCurrEstab.
# TYPE node_netstat_Tcp_CurrEstab untyped
node_netstat_Tcp_CurrEstab 180
# HELP node_netstat_Tcp_InErrs Statistic TcpInErrs.
# TYPE node_netstat_Tcp_InErrs untyped
node_netstat_Tcp_InErrs 16
# HELP node_netstat_Tcp_InSegs Statistic TcpInSegs.
# TYPE node_netstat_Tcp_InSegs untyped
node_netstat_Tcp_InSegs 7.5890684e+07
# HELP node_netstat_Tcp_OutRsts Statistic TcpOutRsts.
# TYPE node_netstat_Tcp_OutRsts untyped
node_netstat_Tcp_OutRsts 657
# HELP node_netstat_Tcp_OutSegs Statistic TcpOutSegs.
# TYPE node_netstat_Tcp_OutSegs untyped
node_netstat_Tcp_OutSegs 1.50101692e+08
# HELP node_netstat_Tcp_PassiveOpens Statistic TcpPassiveOpens.
# TYPE node_netstat_Tcp_PassiveOpens untyped
node_netstat_Tcp_PassiveOpens 1166
# HELP node_netstat_Tcp_RetransSegs Statistic TcpRetransSegs.
# TYPE node_netstat_Tcp_RetransSegs untyped
node_netstat_Tcp_RetransSegs 3157
# HELP node_netstat_Udp6_InDatagrams Statistic Udp6InDatagrams.
# TYPE node_netstat_Udp6_InDatagrams untyped
node_netstat_Udp6_InDatagrams 23252
# HELP node_netstat_Udp6_InErrors Statistic Udp6InErrors.
# TYPE node_netstat_Udp6_InErrors untyped
node_netstat_Udp6_InErrors 0
# HELP node_netstat_Udp6_NoPorts Statistic Udp6NoPorts.
# TYPE node_netstat_Udp6_NoPorts untyped
node_netstat_Udp6_NoPorts 0
# HELP node_netstat_Udp6_OutDatagrams Statistic Udp6OutDatagrams.
# TYPE node_netstat_Udp6_OutDatagrams untyped
node_netstat_Udp6_OutDatagrams 3298
# HELP node_netstat_Udp6_RcvbufErrors Statistic Udp6RcvbufErrors.
# TYPE node_netstat_Udp6_RcvbufErrors untyped
node_netstat_Udp6_RcvbufErrors 0
# HELP node_netstat_Udp6_SndbufErrors Statistic Udp6SndbufErrors.
# TYPE node_netstat_Udp6_SndbufErrors untyped
node_netstat_Udp6_SndbufErrors 0
# HELP node_netstat_UdpLite6_InErrors Statistic UdpLite6InErrors.
# TYPE node_netstat_UdpLite6_InErrors untyped
node_netstat_UdpLite6_InErrors 0
# HELP node_netstat_UdpLite_InErrors Statistic UdpLiteInErrors.
# TYPE node_netstat_UdpLite_InErrors untyped
node_netstat_UdpLite_InErrors 0
# HELP node_netstat_Udp_InDatagrams Statistic UdpInDatagrams.
# TYPE node_netstat_Udp_InDatagrams untyped
node_netstat_Udp_InDatagrams 40679
# HELP node_netstat_Udp_InErrors Statistic UdpInErrors.
# TYPE node_netstat_Udp_InErrors untyped
node_netstat_Udp_InErrors 0
# HELP node_netstat_Udp_NoPorts Statistic UdpNoPorts.
# TYPE node_netstat_Udp_NoPorts untyped
node_netstat_Udp_NoPorts 60
# HELP node_netstat_Udp_OutDatagrams Statistic UdpOutDatagrams.
# TYPE node_netstat_Udp_OutDatagrams untyped
node_netstat_Udp_OutDatagrams 17133
# HELP node_netstat_Udp_RcvbufErrors Statistic UdpRcvbufErrors.
# TYPE node_netstat_Udp_RcvbufErrors untyped
node_netstat_Udp_RcvbufErrors 0
# HELP node_netstat_Udp_SndbufErrors Statistic UdpSndbufErrors.
# TYPE node_netstat_Udp_SndbufErrors untyped
node_netstat_Udp_SndbufErrors 3
# HELP node_network_address_assign_type Network device property: address_assign_type
# TYPE node_network_address_assign_type gauge
node_network_address_assign_type{device="br-0a4a83ec6201"} 3
node_network_address_assign_type{device="br-65d9253d06f8"} 3
node_network_address_assign_type{device="br-e2e5db77c3d9"} 3
node_network_address_assign_type{device="docker0"} 3
node_network_address_assign_type{device="enP2p1s0f0np0"} 0
node_network_address_assign_type{device="enP2p1s0f1np1"} 0
node_network_address_assign_type{device="enP7s7"} 0
node_network_address_assign_type{device="enp1s0f0np0"} 0
node_network_address_assign_type{device="enp1s0f1np1"} 0
node_network_address_assign_type{device="lo"} 0
node_network_address_assign_type{device="veth2f0c6b1"} 3
node_network_address_assign_type{device="veth3d5c704"} 3
node_network_address_assign_type{device="veth54c5b71"} 3
node_network_address_assign_type{device="veth6a8a7bb"} 3
node_network_address_assign_type{device="veth7508889"} 3
node_network_address_assign_type{device="vethaf3415b"} 3
node_network_address_assign_type{device="vethb6ad343"} 3
node_network_address_assign_type{device="wlP9s9"} 0
# HELP node_network_carrier Network device property: carrier
# TYPE node_network_carrier gauge
node_network_carrier{device="br-0a4a83ec6201"} 1
node_network_carrier{device="br-65d9253d06f8"} 1
node_network_carrier{device="br-e2e5db77c3d9"} 1
node_network_carrier{device="docker0"} 1
node_network_carrier{device="enP2p1s0f0np0"} 1
node_network_carrier{device="enP2p1s0f1np1"} 0
node_network_carrier{device="enP7s7"} 1
node_network_carrier{device="enp1s0f0np0"} 1
node_network_carrier{device="enp1s0f1np1"} 0
node_network_carrier{device="lo"} 1
node_network_carrier{device="veth2f0c6b1"} 1
node_network_carrier{device="veth3d5c704"} 1
node_network_carrier{device="veth54c5b71"} 1
node_network_carrier{device="veth6a8a7bb"} 1
node_network_carrier{device="veth7508889"} 1
node_network_carrier{device="vethaf3415b"} 1
node_network_carrier{device="vethb6ad343"} 1
node_network_carrier{device="wlP9s9"} 0
# HELP node_network_carrier_changes_total Network device property: carrier_changes_total
# TYPE node_network_carrier_changes_total counter
node_network_carrier_changes_total{device="br-0a4a83ec6201"} 4
node_network_carrier_changes_total{device="br-65d9253d06f8"} 6
node_network_carrier_changes_total{device="br-e2e5db77c3d9"} 2
node_network_carrier_changes_total{device="docker0"} 6
node_network_carrier_changes_total{device="enP2p1s0f0np0"} 7
node_network_carrier_changes_total{device="enP2p1s0f1np1"} 2
node_network_carrier_changes_total{device="enP7s7"} 18
node_network_carrier_changes_total{device="enp1s0f0np0"} 7
node_network_carrier_changes_total{device="enp1s0f1np1"} 2
node_network_carrier_changes_total{device="lo"} 0
node_network_carrier_changes_total{device="veth2f0c6b1"} 2
node_network_carrier_changes_total{device="veth3d5c704"} 2
node_network_carrier_changes_total{device="veth54c5b71"} 2
node_network_carrier_changes_total{device="veth6a8a7bb"} 2
node_network_carrier_changes_total{device="veth7508889"} 2
node_network_carrier_changes_total{device="vethaf3415b"} 2
node_network_carrier_changes_total{device="vethb6ad343"} 2
node_network_carrier_changes_total{device="wlP9s9"} 1
# HELP node_network_carrier_down_changes_total Network device property: carrier_down_changes_total
# TYPE node_network_carrier_down_changes_total counter
node_network_carrier_down_changes_total{device="br-0a4a83ec6201"} 2
node_network_carrier_down_changes_total{device="br-65d9253d06f8"} 3
node_network_carrier_down_changes_total{device="br-e2e5db77c3d9"} 1
node_network_carrier_down_changes_total{device="docker0"} 3
node_network_carrier_down_changes_total{device="enP2p1s0f0np0"} 3
node_network_carrier_down_changes_total{device="enP2p1s0f1np1"} 1
node_network_carrier_down_changes_total{device="enP7s7"} 9
node_network_carrier_down_changes_total{device="enp1s0f0np0"} 3
node_network_carrier_down_changes_total{device="enp1s0f1np1"} 1
node_network_carrier_down_changes_total{device="lo"} 0
node_network_carrier_down_changes_total{device="veth2f0c6b1"} 1
node_network_carrier_down_changes_total{device="veth3d5c704"} 1
node_network_carrier_down_changes_total{device="veth54c5b71"} 1
node_network_carrier_down_changes_total{device="veth6a8a7bb"} 1
node_network_carrier_down_changes_total{device="veth7508889"} 1
node_network_carrier_down_changes_total{device="vethaf3415b"} 1
node_network_carrier_down_changes_total{device="vethb6ad343"} 1
node_network_carrier_down_changes_total{device="wlP9s9"} 1
# HELP node_network_carrier_up_changes_total Network device property: carrier_up_changes_total
# TYPE node_network_carrier_up_changes_total counter
node_network_carrier_up_changes_total{device="br-0a4a83ec6201"} 2
node_network_carrier_up_changes_total{device="br-65d9253d06f8"} 3
node_network_carrier_up_changes_total{device="br-e2e5db77c3d9"} 1
node_network_carrier_up_changes_total{device="docker0"} 3
node_network_carrier_up_changes_total{device="enP2p1s0f0np0"} 4
node_network_carrier_up_changes_total{device="enP2p1s0f1np1"} 1
node_network_carrier_up_changes_total{device="enP7s7"} 9
node_network_carrier_up_changes_total{device="enp1s0f0np0"} 4
node_network_carrier_up_changes_total{device="enp1s0f1np1"} 1
node_network_carrier_up_changes_total{device="lo"} 0
node_network_carrier_up_changes_total{device="veth2f0c6b1"} 1
node_network_carrier_up_changes_total{device="veth3d5c704"} 1
node_network_carrier_up_changes_total{device="veth54c5b71"} 1
node_network_carrier_up_changes_total{device="veth6a8a7bb"} 1
node_network_carrier_up_changes_total{device="veth7508889"} 1
node_network_carrier_up_changes_total{device="vethaf3415b"} 1
node_network_carrier_up_changes_total{device="vethb6ad343"} 1
node_network_carrier_up_changes_total{device="wlP9s9"} 0
# HELP node_network_device_id Network device property: device_id
# TYPE node_network_device_id gauge
node_network_device_id{device="br-0a4a83ec6201"} 0
node_network_device_id{device="br-65d9253d06f8"} 0
node_network_device_id{device="br-e2e5db77c3d9"} 0
node_network_device_id{device="docker0"} 0
node_network_device_id{device="enP2p1s0f0np0"} 0
node_network_device_id{device="enP2p1s0f1np1"} 0
node_network_device_id{device="enP7s7"} 0
node_network_device_id{device="enp1s0f0np0"} 0
node_network_device_id{device="enp1s0f1np1"} 0
node_network_device_id{device="lo"} 0
node_network_device_id{device="veth2f0c6b1"} 0
node_network_device_id{device="veth3d5c704"} 0
node_network_device_id{device="veth54c5b71"} 0
node_network_device_id{device="veth6a8a7bb"} 0
node_network_device_id{device="veth7508889"} 0
node_network_device_id{device="vethaf3415b"} 0
node_network_device_id{device="vethb6ad343"} 0
node_network_device_id{device="wlP9s9"} 0
# HELP node_network_dormant Network device property: dormant
# TYPE node_network_dormant gauge
node_network_dormant{device="br-0a4a83ec6201"} 0
node_network_dormant{device="br-65d9253d06f8"} 0
node_network_dormant{device="br-e2e5db77c3d9"} 0
node_network_dormant{device="docker0"} 0
node_network_dormant{device="enP2p1s0f0np0"} 0
node_network_dormant{device="enP2p1s0f1np1"} 0
node_network_dormant{device="enP7s7"} 0
node_network_dormant{device="enp1s0f0np0"} 0
node_network_dormant{device="enp1s0f1np1"} 0
node_network_dormant{device="lo"} 0
node_network_dormant{device="veth2f0c6b1"} 0
node_network_dormant{device="veth3d5c704"} 0
node_network_dormant{device="veth54c5b71"} 0
node_network_dormant{device="veth6a8a7bb"} 0
node_network_dormant{device="veth7508889"} 0
node_network_dormant{device="vethaf3415b"} 0
node_network_dormant{device="vethb6ad343"} 0
node_network_dormant{device="wlP9s9"} 0
# HELP node_network_flags Network device property: flags
# TYPE node_network_flags gauge
node_network_flags{device="br-0a4a83ec6201"} 4099
node_network_flags{device="br-65d9253d06f8"} 4099
node_network_flags{device="br-e2e5db77c3d9"} 4099
node_network_flags{device="docker0"} 4099
node_network_flags{device="enP2p1s0f0np0"} 4099
node_network_flags{device="enP2p1s0f1np1"} 4099
node_network_flags{device="enP7s7"} 4099
node_network_flags{device="enp1s0f0np0"} 4099
node_network_flags{device="enp1s0f1np1"} 4099
node_network_flags{device="lo"} 9
node_network_flags{device="veth2f0c6b1"} 4867
node_network_flags{device="veth3d5c704"} 4867
node_network_flags{device="veth54c5b71"} 4867
node_network_flags{device="veth6a8a7bb"} 4867
node_network_flags{device="veth7508889"} 4867
node_network_flags{device="vethaf3415b"} 4867
node_network_flags{device="vethb6ad343"} 4867
node_network_flags{device="wlP9s9"} 4099
# HELP node_network_iface_id Network device property: iface_id
# TYPE node_network_iface_id gauge
node_network_iface_id{device="br-0a4a83ec6201"} 32
node_network_iface_id{device="br-65d9253d06f8"} 33
node_network_iface_id{device="br-e2e5db77c3d9"} 62
node_network_iface_id{device="docker0"} 8
node_network_iface_id{device="enP2p1s0f0np0"} 5
node_network_iface_id{device="enP2p1s0f1np1"} 6
node_network_iface_id{device="enP7s7"} 2
node_network_iface_id{device="enp1s0f0np0"} 3
node_network_iface_id{device="enp1s0f1np1"} 4
node_network_iface_id{device="lo"} 1
node_network_iface_id{device="veth2f0c6b1"} 52
node_network_iface_id{device="veth3d5c704"} 53
node_network_iface_id{device="veth54c5b71"} 42
node_network_iface_id{device="veth6a8a7bb"} 63
node_network_iface_id{device="veth7508889"} 106
node_network_iface_id{device="vethaf3415b"} 13
node_network_iface_id{device="vethb6ad343"} 55
node_network_iface_id{device="wlP9s9"} 7
# HELP node_network_iface_link Network device property: iface_link
# TYPE node_network_iface_link gauge
node_network_iface_link{device="br-0a4a83ec6201"} 32
node_network_iface_link{device="br-65d9253d06f8"} 33
node_network_iface_link{device="br-e2e5db77c3d9"} 62
node_network_iface_link{device="docker0"} 8
node_network_iface_link{device="enP2p1s0f0np0"} 5
node_network_iface_link{device="enP2p1s0f1np1"} 6
node_network_iface_link{device="enP7s7"} 2
node_network_iface_link{device="enp1s0f0np0"} 3
node_network_iface_link{device="enp1s0f1np1"} 4
node_network_iface_link{device="lo"} 1
node_network_iface_link{device="veth2f0c6b1"} 2
node_network_iface_link{device="veth3d5c704"} 3
node_network_iface_link{device="veth54c5b71"} 2
node_network_iface_link{device="veth6a8a7bb"} 2
node_network_iface_link{device="veth7508889"} 2
node_network_iface_link{device="vethaf3415b"} 2
node_network_iface_link{device="vethb6ad343"} 2
node_network_iface_link{device="wlP9s9"} 7
# HELP node_network_iface_link_mode Network device property: iface_link_mode
# TYPE node_network_iface_link_mode gauge
node_network_iface_link_mode{device="br-0a4a83ec6201"} 0
node_network_iface_link_mode{device="br-65d9253d06f8"} 0
node_network_iface_link_mode{device="br-e2e5db77c3d9"} 0
node_network_iface_link_mode{device="docker0"} 0
node_network_iface_link_mode{device="enP2p1s0f0np0"} 0
node_network_iface_link_mode{device="enP2p1s0f1np1"} 0
node_network_iface_link_mode{device="enP7s7"} 0
node_network_iface_link_mode{device="enp1s0f0np0"} 0
node_network_iface_link_mode{device="enp1s0f1np1"} 0
node_network_iface_link_mode{device="lo"} 0
node_network_iface_link_mode{device="veth2f0c6b1"} 0
node_network_iface_link_mode{device="veth3d5c704"} 0
node_network_iface_link_mode{device="veth54c5b71"} 0
node_network_iface_link_mode{device="veth6a8a7bb"} 0
node_network_iface_link_mode{device="veth7508889"} 0
node_network_iface_link_mode{device="vethaf3415b"} 0
node_network_iface_link_mode{device="vethb6ad343"} 0
node_network_iface_link_mode{device="wlP9s9"} 1
# HELP node_network_info Non-numeric data from /sys/class/net/<iface>, value is always 1.
# TYPE node_network_info gauge
node_network_info{address="00:00:00:00:00:00",adminstate="up",broadcast="00:00:00:00:00:00",device="lo",duplex="",ifalias="",operstate="unknown"} 1
node_network_info{address="1a:c0:2b:0d:65:b1",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="docker0",duplex="unknown",ifalias="",operstate="up"} 1
node_network_info{address="1e:ec:dc:cc:43:54",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="br-65d9253d06f8",duplex="unknown",ifalias="",operstate="up"} 1
node_network_info{address="26:37:d5:69:fb:ae",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="br-0a4a83ec6201",duplex="unknown",ifalias="",operstate="up"} 1
node_network_info{address="42:99:87:c2:8e:55",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="veth2f0c6b1",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="48:21:0b:96:38:72",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="enP7s7",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="48:21:0b:96:38:73",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="enp1s0f0np0",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="48:21:0b:96:38:74",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="enp1s0f1np1",duplex="unknown",ifalias="",operstate="down"} 1
node_network_info{address="48:21:0b:96:38:77",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="enP2p1s0f0np0",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="48:21:0b:96:38:78",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="enP2p1s0f1np1",duplex="unknown",ifalias="",operstate="down"} 1
node_network_info{address="4a:21:78:da:3a:24",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="veth7508889",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="4e:2b:af:ad:50:22",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="veth54c5b71",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="50:2e:91:ac:36:ac",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="wlP9s9",duplex="",ifalias="",operstate="down"} 1
node_network_info{address="9a:bd:62:97:a1:50",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="vethb6ad343",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="b6:0b:ab:9a:70:b0",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="br-e2e5db77c3d9",duplex="unknown",ifalias="",operstate="up"} 1
node_network_info{address="ce:7a:e4:32:26:7b",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="vethaf3415b",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="d6:09:bc:45:02:da",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="veth6a8a7bb",duplex="full",ifalias="",operstate="up"} 1
node_network_info{address="f6:0d:1d:1a:5c:73",adminstate="up",broadcast="ff:ff:ff:ff:ff:ff",device="veth3d5c704",duplex="full",ifalias="",operstate="up"} 1
# HELP node_network_mtu_bytes Network device property: mtu_bytes
# TYPE node_network_mtu_bytes gauge
node_network_mtu_bytes{device="br-0a4a83ec6201"} 1500
node_network_mtu_bytes{device="br-65d9253d06f8"} 1500
node_network_mtu_bytes{device="br-e2e5db77c3d9"} 1500
node_network_mtu_bytes{device="docker0"} 1500
node_network_mtu_bytes{device="enP2p1s0f0np0"} 1500
node_network_mtu_bytes{device="enP2p1s0f1np1"} 1500
node_network_mtu_bytes{device="enP7s7"} 1500
node_network_mtu_bytes{device="enp1s0f0np0"} 1500
node_network_mtu_bytes{device="enp1s0f1np1"} 1500
node_network_mtu_bytes{device="lo"} 65536
node_network_mtu_bytes{device="veth2f0c6b1"} 1500
node_network_mtu_bytes{device="veth3d5c704"} 1500
node_network_mtu_bytes{device="veth54c5b71"} 1500
node_network_mtu_bytes{device="veth6a8a7bb"} 1500
node_network_mtu_bytes{device="veth7508889"} 1500
node_network_mtu_bytes{device="vethaf3415b"} 1500
node_network_mtu_bytes{device="vethb6ad343"} 1500
node_network_mtu_bytes{device="wlP9s9"} 1500
# HELP node_network_name_assign_type Network device property: name_assign_type
# TYPE node_network_name_assign_type gauge
node_network_name_assign_type{device="br-0a4a83ec6201"} 3
node_network_name_assign_type{device="br-65d9253d06f8"} 3
node_network_name_assign_type{device="br-e2e5db77c3d9"} 3
node_network_name_assign_type{device="docker0"} 3
node_network_name_assign_type{device="enP2p1s0f0np0"} 4
node_network_name_assign_type{device="enP2p1s0f1np1"} 4
node_network_name_assign_type{device="enP7s7"} 4
node_network_name_assign_type{device="enp1s0f0np0"} 4
node_network_name_assign_type{device="enp1s0f1np1"} 4
node_network_name_assign_type{device="lo"} 2
node_network_name_assign_type{device="veth2f0c6b1"} 3
node_network_name_assign_type{device="veth3d5c704"} 3
node_network_name_assign_type{device="veth54c5b71"} 3
node_network_name_assign_type{device="veth6a8a7bb"} 3
node_network_name_assign_type{device="veth7508889"} 3
node_network_name_assign_type{device="vethaf3415b"} 3
node_network_name_assign_type{device="vethb6ad343"} 3
node_network_name_assign_type{device="wlP9s9"} 4
# HELP node_network_net_dev_group Network device property: net_dev_group
# TYPE node_network_net_dev_group gauge
node_network_net_dev_group{device="br-0a4a83ec6201"} 0
node_network_net_dev_group{device="br-65d9253d06f8"} 0
node_network_net_dev_group{device="br-e2e5db77c3d9"} 0
node_network_net_dev_group{device="docker0"} 0
node_network_net_dev_group{device="enP2p1s0f0np0"} 0
node_network_net_dev_group{device="enP2p1s0f1np1"} 0
node_network_net_dev_group{device="enP7s7"} 0
node_network_net_dev_group{device="enp1s0f0np0"} 0
node_network_net_dev_group{device="enp1s0f1np1"} 0
node_network_net_dev_group{device="lo"} 0
node_network_net_dev_group{device="veth2f0c6b1"} 0
node_network_net_dev_group{device="veth3d5c704"} 0
node_network_net_dev_group{device="veth54c5b71"} 0
node_network_net_dev_group{device="veth6a8a7bb"} 0
node_network_net_dev_group{device="veth7508889"} 0
node_network_net_dev_group{device="vethaf3415b"} 0
node_network_net_dev_group{device="vethb6ad343"} 0
node_network_net_dev_group{device="wlP9s9"} 0
# HELP node_network_protocol_type Network device property: protocol_type
# TYPE node_network_protocol_type gauge
node_network_protocol_type{device="br-0a4a83ec6201"} 1
node_network_protocol_type{device="br-65d9253d06f8"} 1
node_network_protocol_type{device="br-e2e5db77c3d9"} 1
node_network_protocol_type{device="docker0"} 1
node_network_protocol_type{device="enP2p1s0f0np0"} 1
node_network_protocol_type{device="enP2p1s0f1np1"} 1
node_network_protocol_type{device="enP7s7"} 1
node_network_protocol_type{device="enp1s0f0np0"} 1
node_network_protocol_type{device="enp1s0f1np1"} 1
node_network_protocol_type{device="lo"} 772
node_network_protocol_type{device="veth2f0c6b1"} 1
node_network_protocol_type{device="veth3d5c704"} 1
node_network_protocol_type{device="veth54c5b71"} 1
node_network_protocol_type{device="veth6a8a7bb"} 1
node_network_protocol_type{device="veth7508889"} 1
node_network_protocol_type{device="vethaf3415b"} 1
node_network_protocol_type{device="vethb6ad343"} 1
node_network_protocol_type{device="wlP9s9"} 1
# HELP node_network_receive_bytes_total Network device statistic receive_bytes.
# TYPE node_network_receive_bytes_total counter
node_network_receive_bytes_total{device="br-0a4a83ec6201"} 2.130916e+07
node_network_receive_bytes_total{device="br-65d9253d06f8"} 252
node_network_receive_bytes_total{device="br-e2e5db77c3d9"} 5.6998134e+07
node_network_receive_bytes_total{device="docker0"} 1.38365128e+08
node_network_receive_bytes_total{device="enP2p1s0f0np0"} 9.296737e+06
node_network_receive_bytes_total{device="enP2p1s0f1np1"} 0
node_network_receive_bytes_total{device="enP7s7"} 1.70350315064e+11
node_network_receive_bytes_total{device="enp1s0f0np0"} 3.74908733e+08
node_network_receive_bytes_total{device="enp1s0f1np1"} 0
node_network_receive_bytes_total{device="lo"} 1.13658605e+08
node_network_receive_bytes_total{device="veth2f0c6b1"} 126
node_network_receive_bytes_total{device="veth3d5c704"} 2.1474652e+07
node_network_receive_bytes_total{device="veth54c5b71"} 1.908429e+06
node_network_receive_bytes_total{device="veth6a8a7bb"} 1.5860679e+07
node_network_receive_bytes_total{device="veth7508889"} 5.8175299e+07
node_network_receive_bytes_total{device="vethaf3415b"} 1.48827314e+08
node_network_receive_bytes_total{device="vethb6ad343"} 1.7978823e+07
node_network_receive_bytes_total{device="wlP9s9"} 0
# HELP node_network_receive_compressed_total Network device statistic receive_compressed.
# TYPE node_network_receive_compressed_total counter
node_network_receive_compressed_total{device="br-0a4a83ec6201"} 0
node_network_receive_compressed_total{device="br-65d9253d06f8"} 0
node_network_receive_compressed_total{device="br-e2e5db77c3d9"} 0
node_network_receive_compressed_total{device="docker0"} 0
node_network_receive_compressed_total{device="enP2p1s0f0np0"} 0
node_network_receive_compressed_total{device="enP2p1s0f1np1"} 0
node_network_receive_compressed_total{device="enP7s7"} 0
node_network_receive_compressed_total{device="enp1s0f0np0"} 0
node_network_receive_compressed_total{device="enp1s0f1np1"} 0
node_network_receive_compressed_total{device="lo"} 0
node_network_receive_compressed_total{device="veth2f0c6b1"} 0
node_network_receive_compressed_total{device="veth3d5c704"} 0
node_network_receive_compressed_total{device="veth54c5b71"} 0
node_network_receive_compressed_total{device="veth6a8a7bb"} 0
node_network_receive_compressed_total{device="veth7508889"} 0
node_network_receive_compressed_total{device="vethaf3415b"} 0
node_network_receive_compressed_total{device="vethb6ad343"} 0
node_network_receive_compressed_total{device="wlP9s9"} 0
# HELP node_network_receive_drop_total Network device statistic receive_drop.
# TYPE node_network_receive_drop_total counter
node_network_receive_drop_total{device="br-0a4a83ec6201"} 0
node_network_receive_drop_total{device="br-65d9253d06f8"} 0
node_network_receive_drop_total{device="br-e2e5db77c3d9"} 0
node_network_receive_drop_total{device="docker0"} 0
node_network_receive_drop_total{device="enP2p1s0f0np0"} 0
node_network_receive_drop_total{device="enP2p1s0f1np1"} 0
node_network_receive_drop_total{device="enP7s7"} 0
node_network_receive_drop_total{device="enp1s0f0np0"} 0
node_network_receive_drop_total{device="enp1s0f1np1"} 0
node_network_receive_drop_total{device="lo"} 0
node_network_receive_drop_total{device="veth2f0c6b1"} 0
node_network_receive_drop_total{device="veth3d5c704"} 0
node_network_receive_drop_total{device="veth54c5b71"} 0
node_network_receive_drop_total{device="veth6a8a7bb"} 0
node_network_receive_drop_total{device="veth7508889"} 0
node_network_receive_drop_total{device="vethaf3415b"} 0
node_network_receive_drop_total{device="vethb6ad343"} 0
node_network_receive_drop_total{device="wlP9s9"} 0
# HELP node_network_receive_errs_total Network device statistic receive_errs.
# TYPE node_network_receive_errs_total counter
node_network_receive_errs_total{device="br-0a4a83ec6201"} 0
node_network_receive_errs_total{device="br-65d9253d06f8"} 0
node_network_receive_errs_total{device="br-e2e5db77c3d9"} 0
node_network_receive_errs_total{device="docker0"} 0
node_network_receive_errs_total{device="enP2p1s0f0np0"} 0
node_network_receive_errs_total{device="enP2p1s0f1np1"} 0
node_network_receive_errs_total{device="enP7s7"} 0
node_network_receive_errs_total{device="enp1s0f0np0"} 0
node_network_receive_errs_total{device="enp1s0f1np1"} 0
node_network_receive_errs_total{device="lo"} 0
node_network_receive_errs_total{device="veth2f0c6b1"} 0
node_network_receive_errs_total{device="veth3d5c704"} 0
node_network_receive_errs_total{device="veth54c5b71"} 0
node_network_receive_errs_total{device="veth6a8a7bb"} 0
node_network_receive_errs_total{device="veth7508889"} 0
node_network_receive_errs_total{device="vethaf3415b"} 0
node_network_receive_errs_total{device="vethb6ad343"} 0
node_network_receive_errs_total{device="wlP9s9"} 0
# HELP node_network_receive_fifo_total Network device statistic receive_fifo.
# TYPE node_network_receive_fifo_total counter
node_network_receive_fifo_total{device="br-0a4a83ec6201"} 0
node_network_receive_fifo_total{device="br-65d9253d06f8"} 0
node_network_receive_fifo_total{device="br-e2e5db77c3d9"} 0
node_network_receive_fifo_total{device="docker0"} 0
node_network_receive_fifo_total{device="enP2p1s0f0np0"} 0
node_network_receive_fifo_total{device="enP2p1s0f1np1"} 0
node_network_receive_fifo_total{device="enP7s7"} 0
node_network_receive_fifo_total{device="enp1s0f0np0"} 0
node_network_receive_fifo_total{device="enp1s0f1np1"} 0
node_network_receive_fifo_total{device="lo"} 0
node_network_receive_fifo_total{device="veth2f0c6b1"} 0
node_network_receive_fifo_total{device="veth3d5c704"} 0
node_network_receive_fifo_total{device="veth54c5b71"} 0
node_network_receive_fifo_total{device="veth6a8a7bb"} 0
node_network_receive_fifo_total{device="veth7508889"} 0
node_network_receive_fifo_total{device="vethaf3415b"} 0
node_network_receive_fifo_total{device="vethb6ad343"} 0
node_network_receive_fifo_total{device="wlP9s9"} 0
# HELP node_network_receive_frame_total Network device statistic receive_frame.
# TYPE node_network_receive_frame_total counter
node_network_receive_frame_total{device="br-0a4a83ec6201"} 0
node_network_receive_frame_total{device="br-65d9253d06f8"} 0
node_network_receive_frame_total{device="br-e2e5db77c3d9"} 0
node_network_receive_frame_total{device="docker0"} 0
node_network_receive_frame_total{device="enP2p1s0f0np0"} 0
node_network_receive_frame_total{device="enP2p1s0f1np1"} 0
node_network_receive_frame_total{device="enP7s7"} 0
node_network_receive_frame_total{device="enp1s0f0np0"} 0
node_network_receive_frame_total{device="enp1s0f1np1"} 0
node_network_receive_frame_total{device="lo"} 0
node_network_receive_frame_total{device="veth2f0c6b1"} 0
node_network_receive_frame_total{device="veth3d5c704"} 0
node_network_receive_frame_total{device="veth54c5b71"} 0
node_network_receive_frame_total{device="veth6a8a7bb"} 0
node_network_receive_frame_total{device="veth7508889"} 0
node_network_receive_frame_total{device="vethaf3415b"} 0
node_network_receive_frame_total{device="vethb6ad343"} 0
node_network_receive_frame_total{device="wlP9s9"} 0
# HELP node_network_receive_multicast_total Network device statistic receive_multicast.
# TYPE node_network_receive_multicast_total counter
node_network_receive_multicast_total{device="br-0a4a83ec6201"} 0
node_network_receive_multicast_total{device="br-65d9253d06f8"} 0
node_network_receive_multicast_total{device="br-e2e5db77c3d9"} 0
node_network_receive_multicast_total{device="docker0"} 0
node_network_receive_multicast_total{device="enP2p1s0f0np0"} 137109
node_network_receive_multicast_total{device="enP2p1s0f1np1"} 0
node_network_receive_multicast_total{device="enP7s7"} 279432
node_network_receive_multicast_total{device="enp1s0f0np0"} 8126
node_network_receive_multicast_total{device="enp1s0f1np1"} 0
node_network_receive_multicast_total{device="lo"} 0
node_network_receive_multicast_total{device="veth2f0c6b1"} 0
node_network_receive_multicast_total{device="veth3d5c704"} 0
node_network_receive_multicast_total{device="veth54c5b71"} 0
node_network_receive_multicast_total{device="veth6a8a7bb"} 0
node_network_receive_multicast_total{device="veth7508889"} 0
node_network_receive_multicast_total{device="vethaf3415b"} 0
node_network_receive_multicast_total{device="vethb6ad343"} 0
node_network_receive_multicast_total{device="wlP9s9"} 0
# HELP node_network_receive_nohandler_total Network device statistic receive_nohandler.
# TYPE node_network_receive_nohandler_total counter
node_network_receive_nohandler_total{device="br-0a4a83ec6201"} 0
node_network_receive_nohandler_total{device="br-65d9253d06f8"} 0
node_network_receive_nohandler_total{device="br-e2e5db77c3d9"} 0
node_network_receive_nohandler_total{device="docker0"} 0
node_network_receive_nohandler_total{device="enP2p1s0f0np0"} 0
node_network_receive_nohandler_total{device="enP2p1s0f1np1"} 0
node_network_receive_nohandler_total{device="enP7s7"} 0
node_network_receive_nohandler_total{device="enp1s0f0np0"} 0
node_network_receive_nohandler_total{device="enp1s0f1np1"} 0
node_network_receive_nohandler_total{device="lo"} 0
node_network_receive_nohandler_total{device="veth2f0c6b1"} 0
node_network_receive_nohandler_total{device="veth3d5c704"} 0
node_network_receive_nohandler_total{device="veth54c5b71"} 0
node_network_receive_nohandler_total{device="veth6a8a7bb"} 0
node_network_receive_nohandler_total{device="veth7508889"} 0
node_network_receive_nohandler_total{device="vethaf3415b"} 0
node_network_receive_nohandler_total{device="vethb6ad343"} 0
node_network_receive_nohandler_total{device="wlP9s9"} 0
# HELP node_network_receive_packets_total Network device statistic receive_packets.
# TYPE node_network_receive_packets_total counter
node_network_receive_packets_total{device="br-0a4a83ec6201"} 11298
node_network_receive_packets_total{device="br-65d9253d06f8"} 9
node_network_receive_packets_total{device="br-e2e5db77c3d9"} 33598
node_network_receive_packets_total{device="docker0"} 1.901731e+06
node_network_receive_packets_total{device="enP2p1s0f0np0"} 137109
node_network_receive_packets_total{device="enP2p1s0f1np1"} 0
node_network_receive_packets_total{device="enP7s7"} 1.15540503e+08
node_network_receive_packets_total{device="enp1s0f0np0"} 3.713617e+06
node_network_receive_packets_total{device="enp1s0f1np1"} 0
node_network_receive_packets_total{device="lo"} 261342
node_network_receive_packets_total{device="veth2f0c6b1"} 3
node_network_receive_packets_total{device="veth3d5c704"} 18065
node_network_receive_packets_total{device="veth54c5b71"} 442
node_network_receive_packets_total{device="veth6a8a7bb"} 4537
node_network_receive_packets_total{device="veth7508889"} 39064
node_network_receive_packets_total{device="vethaf3415b"} 1.693e+06
node_network_receive_packets_total{device="vethb6ad343"} 7790
node_network_receive_packets_total{device="wlP9s9"} 0
# HELP node_network_speed_bytes Network device property: speed_bytes
# TYPE node_network_speed_bytes gauge
node_network_speed_bytes{device="br-0a4a83ec6201"} 1.25e+09
node_network_speed_bytes{device="br-65d9253d06f8"} 1.25e+09
node_network_speed_bytes{device="br-e2e5db77c3d9"} 1.25e+09
node_network_speed_bytes{device="docker0"} 1.25e+09
node_network_speed_bytes{device="enP2p1s0f0np0"} 2.5e+10
node_network_speed_bytes{device="enP2p1s0f1np1"} -125000
node_network_speed_bytes{device="enP7s7"} 1.25e+08
node_network_speed_bytes{device="enp1s0f0np0"} 2.5e+10
node_network_speed_bytes{device="enp1s0f1np1"} -125000
node_network_speed_bytes{device="veth2f0c6b1"} 1.25e+09
node_network_speed_bytes{device="veth3d5c704"} 1.25e+09
node_network_speed_bytes{device="veth54c5b71"} 1.25e+09
node_network_speed_bytes{device="veth6a8a7bb"} 1.25e+09
node_network_speed_bytes{device="veth7508889"} 1.25e+09
node_network_speed_bytes{device="vethaf3415b"} 1.25e+09
node_network_speed_bytes{device="vethb6ad343"} 1.25e+09
# HELP node_network_transmit_bytes_total Network device statistic transmit_bytes.
# TYPE node_network_transmit_bytes_total counter
node_network_transmit_bytes_total{device="br-0a4a83ec6201"} 2.171752e+06
node_network_transmit_bytes_total{device="br-65d9253d06f8"} 15982
node_network_transmit_bytes_total{device="br-e2e5db77c3d9"} 2.9085376e+07
node_network_transmit_bytes_total{device="docker0"} 2.6882471063e+10
node_network_transmit_bytes_total{device="enP2p1s0f0np0"} 963739
node_network_transmit_bytes_total{device="enP2p1s0f1np1"} 0
node_network_transmit_bytes_total{device="enP7s7"} 3.727234078e+09
node_network_transmit_bytes_total{device="enp1s0f0np0"} 1.55702986769e+11
node_network_transmit_bytes_total{device="enp1s0f1np1"} 0
node_network_transmit_bytes_total{device="lo"} 1.13658605e+08
node_network_transmit_bytes_total{device="veth2f0c6b1"} 78457
node_network_transmit_bytes_total{device="veth3d5c704"} 2.0270187e+07
node_network_transmit_bytes_total{device="veth54c5b71"} 243845
node_network_transmit_bytes_total{device="veth6a8a7bb"} 775759
node_network_transmit_bytes_total{device="veth7508889"} 4.4986051e+07
node_network_transmit_bytes_total{device="vethaf3415b"} 2.0034119774e+10
node_network_transmit_bytes_total{device="vethb6ad343"} 707668
node_network_transmit_bytes_total{device="wlP9s9"} 0
# HELP node_network_transmit_carrier_total Network device statistic transmit_carrier.
# TYPE node_network_transmit_carrier_total counter
node_network_transmit_carrier_total{device="br-0a4a83ec6201"} 0
node_network_transmit_carrier_total{device="br-65d9253d06f8"} 0
node_network_transmit_carrier_total{device="br-e2e5db77c3d9"} 0
node_network_transmit_carrier_total{device="docker0"} 0
node_network_transmit_carrier_total{device="enP2p1s0f0np0"} 0
node_network_transmit_carrier_total{device="enP2p1s0f1np1"} 0
node_network_transmit_carrier_total{device="enP7s7"} 0
node_network_transmit_carrier_total{device="enp1s0f0np0"} 0
node_network_transmit_carrier_total{device="enp1s0f1np1"} 0
node_network_transmit_carrier_total{device="lo"} 0
node_network_transmit_carrier_total{device="veth2f0c6b1"} 0
node_network_transmit_carrier_total{device="veth3d5c704"} 0
node_network_transmit_carrier_total{device="veth54c5b71"} 0
node_network_transmit_carrier_total{device="veth6a8a7bb"} 0
node_network_transmit_carrier_total{device="veth7508889"} 0
node_network_transmit_carrier_total{device="vethaf3415b"} 0
node_network_transmit_carrier_total{device="vethb6ad343"} 0
node_network_transmit_carrier_total{device="wlP9s9"} 0
# HELP node_network_transmit_colls_total Network device statistic transmit_colls.
# TYPE node_network_transmit_colls_total counter
node_network_transmit_colls_total{device="br-0a4a83ec6201"} 0
node_network_transmit_colls_total{device="br-65d9253d06f8"} 0
node_network_transmit_colls_total{device="br-e2e5db77c3d9"} 0
node_network_transmit_colls_total{device="docker0"} 0
node_network_transmit_colls_total{device="enP2p1s0f0np0"} 0
node_network_transmit_colls_total{device="enP2p1s0f1np1"} 0
node_network_transmit_colls_total{device="enP7s7"} 0
node_network_transmit_colls_total{device="enp1s0f0np0"} 0
node_network_transmit_colls_total{device="enp1s0f1np1"} 0
node_network_transmit_colls_total{device="lo"} 0
node_network_transmit_colls_total{device="veth2f0c6b1"} 0
node_network_transmit_colls_total{device="veth3d5c704"} 0
node_network_transmit_colls_total{device="veth54c5b71"} 0
node_network_transmit_colls_total{device="veth6a8a7bb"} 0
node_network_transmit_colls_total{device="veth7508889"} 0
node_network_transmit_colls_total{device="vethaf3415b"} 0
node_network_transmit_colls_total{device="vethb6ad343"} 0
node_network_transmit_colls_total{device="wlP9s9"} 0
# HELP node_network_transmit_compressed_total Network device statistic transmit_compressed.
# TYPE node_network_transmit_compressed_total counter
node_network_transmit_compressed_total{device="br-0a4a83ec6201"} 0
node_network_transmit_compressed_total{device="br-65d9253d06f8"} 0
node_network_transmit_compressed_total{device="br-e2e5db77c3d9"} 0
node_network_transmit_compressed_total{device="docker0"} 0
node_network_transmit_compressed_total{device="enP2p1s0f0np0"} 0
node_network_transmit_compressed_total{device="enP2p1s0f1np1"} 0
node_network_transmit_compressed_total{device="enP7s7"} 0
node_network_transmit_compressed_total{device="enp1s0f0np0"} 0
node_network_transmit_compressed_total{device="enp1s0f1np1"} 0
node_network_transmit_compressed_total{device="lo"} 0
node_network_transmit_compressed_total{device="veth2f0c6b1"} 0
node_network_transmit_compressed_total{device="veth3d5c704"} 0
node_network_transmit_compressed_total{device="veth54c5b71"} 0
node_network_transmit_compressed_total{device="veth6a8a7bb"} 0
node_network_transmit_compressed_total{device="veth7508889"} 0
node_network_transmit_compressed_total{device="vethaf3415b"} 0
node_network_transmit_compressed_total{device="vethb6ad343"} 0
node_network_transmit_compressed_total{device="wlP9s9"} 0
# HELP node_network_transmit_drop_total Network device statistic transmit_drop.
# TYPE node_network_transmit_drop_total counter
node_network_transmit_drop_total{device="br-0a4a83ec6201"} 19
node_network_transmit_drop_total{device="br-65d9253d06f8"} 19
node_network_transmit_drop_total{device="br-e2e5db77c3d9"} 5
node_network_transmit_drop_total{device="docker0"} 52
node_network_transmit_drop_total{device="enP2p1s0f0np0"} 2
node_network_transmit_drop_total{device="enP2p1s0f1np1"} 0
node_network_transmit_drop_total{device="enP7s7"} 87
node_network_transmit_drop_total{device="enp1s0f0np0"} 2
node_network_transmit_drop_total{device="enp1s0f1np1"} 0
node_network_transmit_drop_total{device="lo"} 0
node_network_transmit_drop_total{device="veth2f0c6b1"} 0
node_network_transmit_drop_total{device="veth3d5c704"} 0
node_network_transmit_drop_total{device="veth54c5b71"} 0
node_network_transmit_drop_total{device="veth6a8a7bb"} 0
node_network_transmit_drop_total{device="veth7508889"} 0
node_network_transmit_drop_total{device="vethaf3415b"} 0
node_network_transmit_drop_total{device="vethb6ad343"} 0
node_network_transmit_drop_total{device="wlP9s9"} 0
# HELP node_network_transmit_errs_total Network device statistic transmit_errs.
# TYPE node_network_transmit_errs_total counter
node_network_transmit_errs_total{device="br-0a4a83ec6201"} 0
node_network_transmit_errs_total{device="br-65d9253d06f8"} 0
node_network_transmit_errs_total{device="br-e2e5db77c3d9"} 0
node_network_transmit_errs_total{device="docker0"} 0
node_network_transmit_errs_total{device="enP2p1s0f0np0"} 0
node_network_transmit_errs_total{device="enP2p1s0f1np1"} 0
node_network_transmit_errs_total{device="enP7s7"} 0
node_network_transmit_errs_total{device="enp1s0f0np0"} 0
node_network_transmit_errs_total{device="enp1s0f1np1"} 0
node_network_transmit_errs_total{device="lo"} 0
node_network_transmit_errs_total{device="veth2f0c6b1"} 0
node_network_transmit_errs_total{device="veth3d5c704"} 0
node_network_transmit_errs_total{device="veth54c5b71"} 0
node_network_transmit_errs_total{device="veth6a8a7bb"} 0
node_network_transmit_errs_total{device="veth7508889"} 0
node_network_transmit_errs_total{device="vethaf3415b"} 0
node_network_transmit_errs_total{device="vethb6ad343"} 0
node_network_transmit_errs_total{device="wlP9s9"} 0
# HELP node_network_transmit_fifo_total Network device statistic transmit_fifo.
# TYPE node_network_transmit_fifo_total counter
node_network_transmit_fifo_total{device="br-0a4a83ec6201"} 0
node_network_transmit_fifo_total{device="br-65d9253d06f8"} 0
node_network_transmit_fifo_total{device="br-e2e5db77c3d9"} 0
node_network_transmit_fifo_total{device="docker0"} 0
node_network_transmit_fifo_total{device="enP2p1s0f0np0"} 0
node_network_transmit_fifo_total{device="enP2p1s0f1np1"} 0
node_network_transmit_fifo_total{device="enP7s7"} 0
node_network_transmit_fifo_total{device="enp1s0f0np0"} 0
node_network_transmit_fifo_total{device="enp1s0f1np1"} 0
node_network_transmit_fifo_total{device="lo"} 0
node_network_transmit_fifo_total{device="veth2f0c6b1"} 0
node_network_transmit_fifo_total{device="veth3d5c704"} 0
node_network_transmit_fifo_total{device="veth54c5b71"} 0
node_network_transmit_fifo_total{device="veth6a8a7bb"} 0
node_network_transmit_fifo_total{device="veth7508889"} 0
node_network_transmit_fifo_total{device="vethaf3415b"} 0
node_network_transmit_fifo_total{device="vethb6ad343"} 0
node_network_transmit_fifo_total{device="wlP9s9"} 0
# HELP node_network_transmit_packets_total Network device statistic transmit_packets.
# TYPE node_network_transmit_packets_total counter
node_network_transmit_packets_total{device="br-0a4a83ec6201"} 11407
node_network_transmit_packets_total{device="br-65d9253d06f8"} 143
node_network_transmit_packets_total{device="br-e2e5db77c3d9"} 17950
node_network_transmit_packets_total{device="docker0"} 2.296218e+06
node_network_transmit_packets_total{device="enP2p1s0f0np0"} 5389
node_network_transmit_packets_total{device="enP2p1s0f1np1"} 0
node_network_transmit_packets_total{device="enP7s7"} 4.6863741e+07
node_network_transmit_packets_total{device="enp1s0f0np0"} 1.05006544e+08
node_network_transmit_packets_total{device="enp1s0f1np1"} 0
node_network_transmit_packets_total{device="lo"} 261342
node_network_transmit_packets_total{device="veth2f0c6b1"} 395
node_network_transmit_packets_total{device="veth3d5c704"} 18213
node_network_transmit_packets_total{device="veth54c5b71"} 889
node_network_transmit_packets_total{device="veth6a8a7bb"} 5870
node_network_transmit_packets_total{device="veth7508889"} 22652
node_network_transmit_packets_total{device="vethaf3415b"} 2.021066e+06
node_network_transmit_packets_total{device="vethb6ad343"} 8173
node_network_transmit_packets_total{device="wlP9s9"} 0
# HELP node_network_transmit_queue_length Network device property: transmit_queue_length
# TYPE node_network_transmit_queue_length gauge
node_network_transmit_queue_length{device="br-0a4a83ec6201"} 0
node_network_transmit_queue_length{device="br-65d9253d06f8"} 0
node_network_transmit_queue_length{device="br-e2e5db77c3d9"} 0
node_network_transmit_queue_length{device="docker0"} 0
node_network_transmit_queue_length{device="enP2p1s0f0np0"} 1000
node_network_transmit_queue_length{device="enP2p1s0f1np1"} 1000
node_network_transmit_queue_length{device="enP7s7"} 1000
node_network_transmit_queue_length{device="enp1s0f0np0"} 1000
node_network_transmit_queue_length{device="enp1s0f1np1"} 1000
node_network_transmit_queue_length{device="lo"} 1000
node_network_transmit_queue_length{device="veth2f0c6b1"} 0
node_network_transmit_queue_length{device="veth3d5c704"} 0
node_network_transmit_queue_length{device="veth54c5b71"} 0
node_network_transmit_queue_length{device="veth6a8a7bb"} 0
node_network_transmit_queue_length{device="veth7508889"} 0
node_network_transmit_queue_length{device="vethaf3415b"} 0
node_network_transmit_queue_length{device="vethb6ad343"} 0
node_network_transmit_queue_length{device="wlP9s9"} 1000
# HELP node_network_up Value is 1 if operstate is 'up', 0 otherwise.
# TYPE node_network_up gauge
node_network_up{device="br-0a4a83ec6201"} 1
node_network_up{device="br-65d9253d06f8"} 1
node_network_up{device="br-e2e5db77c3d9"} 1
node_network_up{device="docker0"} 1
node_network_up{device="enP2p1s0f0np0"} 1
node_network_up{device="enP2p1s0f1np1"} 0
node_network_up{device="enP7s7"} 1
node_network_up{device="enp1s0f0np0"} 1
node_network_up{device="enp1s0f1np1"} 0
node_network_up{device="lo"} 0
node_network_up{device="veth2f0c6b1"} 1
node_network_up{device="veth3d5c704"} 1
node_network_up{device="veth54c5b71"} 1
node_network_up{device="veth6a8a7bb"} 1
node_network_up{device="veth7508889"} 1
node_network_up{device="vethaf3415b"} 1
node_network_up{device="vethb6ad343"} 1
node_network_up{device="wlP9s9"} 0
# HELP node_nf_conntrack_entries Number of currently allocated flow entries for connection tracking.
# TYPE node_nf_conntrack_entries gauge
node_nf_conntrack_entries 269
# HELP node_nf_conntrack_entries_limit Maximum size of connection tracking table.
# TYPE node_nf_conntrack_entries_limit gauge
node_nf_conntrack_entries_limit 262144
# HELP node_nvme_info Non-numeric data from /sys/class/nvme/<device>, value is always 1.
# TYPE node_nvme_info gauge
node_nvme_info{cntlid="1",device="nvme0",firmware_revision="NXHB202Q",model="SAMSUNG MZALC4T0HBL1-00B07",serial="S8C2NG0Y902236",state="live"} 1
# HELP node_os_info A metric with a constant '1' value labeled by build_id, id, id_like, image_id, image_version, name, pretty_name, variant, variant_id, version, version_codename, version_id.
# TYPE node_os_info gauge
node_os_info{build_id="",id="ubuntu",id_like="debian",image_id="",image_version="",name="Ubuntu",pretty_name="Ubuntu 24.04.4 LTS",variant="",variant_id="",version="24.04.4 LTS (Noble Numbat)",version_codename="noble",version_id="24.04"} 1
# HELP node_os_version Metric containing the major.minor part of the OS version.
# TYPE node_os_version gauge
node_os_version{id="ubuntu",id_like="debian",name="Ubuntu"} 24.04
# HELP node_pressure_cpu_waiting_seconds_total Total time in seconds that processes have waited for CPU time
# TYPE node_pressure_cpu_waiting_seconds_total counter
node_pressure_cpu_waiting_seconds_total 98.19628200000001
# HELP node_pressure_io_stalled_seconds_total Total time in seconds no process could make progress due to IO congestion
# TYPE node_pressure_io_stalled_seconds_total counter
node_pressure_io_stalled_seconds_total 74.216982
# HELP node_pressure_io_waiting_seconds_total Total time in seconds that processes have waited due to IO congestion
# TYPE node_pressure_io_waiting_seconds_total counter
node_pressure_io_waiting_seconds_total 74.642995
# HELP node_pressure_memory_stalled_seconds_total Total time in seconds no process could make progress due to memory congestion
# TYPE node_pressure_memory_stalled_seconds_total counter
node_pressure_memory_stalled_seconds_total 6.544723
# HELP node_pressure_memory_waiting_seconds_total Total time in seconds that processes have waited for memory
# TYPE node_pressure_memory_waiting_seconds_total counter
node_pressure_memory_waiting_seconds_total 6.553191
# HELP node_procs_blocked Number of processes blocked waiting for I/O to complete.
# TYPE node_procs_blocked gauge
node_procs_blocked 1
# HELP node_procs_running Number of processes in runnable state.
# TYPE node_procs_running gauge
node_procs_running 2
# HELP node_schedstat_running_seconds_total Number of seconds CPU spent running a process.
# TYPE node_schedstat_running_seconds_total counter
node_schedstat_running_seconds_total{cpu="0"} 365.261030432
node_schedstat_running_seconds_total{cpu="1"} 318.264645792
node_schedstat_running_seconds_total{cpu="10"} 277.213040352
node_schedstat_running_seconds_total{cpu="11"} 290.406263312
node_schedstat_running_seconds_total{cpu="12"} 310.100359168
node_schedstat_running_seconds_total{cpu="13"} 498.30329256
node_schedstat_running_seconds_total{cpu="14"} 424.335515456
node_schedstat_running_seconds_total{cpu="15"} 803.201177616
node_schedstat_running_seconds_total{cpu="16"} 535.69314576
node_schedstat_running_seconds_total{cpu="17"} 457.406269136
node_schedstat_running_seconds_total{cpu="18"} 457.664450288
node_schedstat_running_seconds_total{cpu="19"} 425.37161656
node_schedstat_running_seconds_total{cpu="2"} 308.077125424
node_schedstat_running_seconds_total{cpu="3"} 280.46779696
node_schedstat_running_seconds_total{cpu="4"} 324.218185456
node_schedstat_running_seconds_total{cpu="5"} 662.072942768
node_schedstat_running_seconds_total{cpu="6"} 491.546152704
node_schedstat_running_seconds_total{cpu="7"} 508.840487408
node_schedstat_running_seconds_total{cpu="8"} 437.715508352
node_schedstat_running_seconds_total{cpu="9"} 453.919294928
# HELP node_schedstat_timeslices_total Number of timeslices executed by CPU.
# TYPE node_schedstat_timeslices_total counter
node_schedstat_timeslices_total{cpu="0"} 2.52373e+06
node_schedstat_timeslices_total{cpu="1"} 2.092732e+06
node_schedstat_timeslices_total{cpu="10"} 1.935265e+06
node_schedstat_timeslices_total{cpu="11"} 2.139625e+06
node_schedstat_timeslices_total{cpu="12"} 2.162221e+06
node_schedstat_timeslices_total{cpu="13"} 7.712205e+06
node_schedstat_timeslices_total{cpu="14"} 6.63082e+06
node_schedstat_timeslices_total{cpu="15"} 7.964673e+06
node_schedstat_timeslices_total{cpu="16"} 7.164779e+06
node_schedstat_timeslices_total{cpu="17"} 5.157834e+06
node_schedstat_timeslices_total{cpu="18"} 3.621009e+06
node_schedstat_timeslices_total{cpu="19"} 2.623015e+06
node_schedstat_timeslices_total{cpu="2"} 2.124424e+06
node_schedstat_timeslices_total{cpu="3"} 1.935686e+06
node_schedstat_timeslices_total{cpu="4"} 1.893856e+06
node_schedstat_timeslices_total{cpu="5"} 2.49909e+06
node_schedstat_timeslices_total{cpu="6"} 3.411622e+06
node_schedstat_timeslices_total{cpu="7"} 2.996437e+06
node_schedstat_timeslices_total{cpu="8"} 3.013449e+06
node_schedstat_timeslices_total{cpu="9"} 2.269604e+06
# HELP node_schedstat_waiting_seconds_total Number of seconds spent by processing waiting for this CPU.
# TYPE node_schedstat_waiting_seconds_total counter
node_schedstat_waiting_seconds_total{cpu="0"} 113.265979776
node_schedstat_waiting_seconds_total{cpu="1"} 122.717238016
node_schedstat_waiting_seconds_total{cpu="10"} 133.227029136
node_schedstat_waiting_seconds_total{cpu="11"} 133.988870672
node_schedstat_waiting_seconds_total{cpu="12"} 135.95864624
node_schedstat_waiting_seconds_total{cpu="13"} 129.869360112
node_schedstat_waiting_seconds_total{cpu="14"} 120.23179136
node_schedstat_waiting_seconds_total{cpu="15"} 182.910833744
node_schedstat_waiting_seconds_total{cpu="16"} 166.286151264
node_schedstat_waiting_seconds_total{cpu="17"} 178.504356544
node_schedstat_waiting_seconds_total{cpu="18"} 181.60754352
node_schedstat_waiting_seconds_total{cpu="19"} 170.882506656
node_schedstat_waiting_seconds_total{cpu="2"} 114.615576544
node_schedstat_waiting_seconds_total{cpu="3"} 111.252733088
node_schedstat_waiting_seconds_total{cpu="4"} 123.913422608
node_schedstat_waiting_seconds_total{cpu="5"} 151.512713936
node_schedstat_waiting_seconds_total{cpu="6"} 156.442520944
node_schedstat_waiting_seconds_total{cpu="7"} 160.61286296
node_schedstat_waiting_seconds_total{cpu="8"} 156.125009456
node_schedstat_waiting_seconds_total{cpu="9"} 170.766665904
# HELP node_scrape_collector_duration_seconds node_exporter: Duration of a collector scrape.
# TYPE node_scrape_collector_duration_seconds gauge
node_scrape_collector_duration_seconds{collector="arp"} 0.00042632
node_scrape_collector_duration_seconds{collector="bcache"} 1.792e-05
node_scrape_collector_duration_seconds{collector="bcachefs"} 2.096e-05
node_scrape_collector_duration_seconds{collector="bonding"} 4.72e-06
node_scrape_collector_duration_seconds{collector="btrfs"} 0.006356487
node_scrape_collector_duration_seconds{collector="conntrack"} 3.1152e-05
node_scrape_collector_duration_seconds{collector="cpu"} 0.000772225
node_scrape_collector_duration_seconds{collector="cpufreq"} 0.006620471
node_scrape_collector_duration_seconds{collector="diskstats"} 0.000524624
node_scrape_collector_duration_seconds{collector="dmi"} 8.256e-06
node_scrape_collector_duration_seconds{collector="edac"} 1.1888e-05
node_scrape_collector_duration_seconds{collector="entropy"} 6.1216e-05
node_scrape_collector_duration_seconds{collector="fibrechannel"} 9.536e-06
node_scrape_collector_duration_seconds{collector="filefd"} 3.9232e-05
node_scrape_collector_duration_seconds{collector="filesystem"} 0.00921329
node_scrape_collector_duration_seconds{collector="hwmon"} 0.057813261
node_scrape_collector_duration_seconds{collector="infiniband"} 0.097168998
node_scrape_collector_duration_seconds{collector="ipvs"} 6.08e-06
node_scrape_collector_duration_seconds{collector="kernel_hung"} 1.2097e-05
node_scrape_collector_duration_seconds{collector="loadavg"} 4.2112e-05
node_scrape_collector_duration_seconds{collector="mdadm"} 8.5264e-05
node_scrape_collector_duration_seconds{collector="meminfo"} 0.000117904
node_scrape_collector_duration_seconds{collector="netclass"} 0.022468424
node_scrape_collector_duration_seconds{collector="netdev"} 0.000481248
node_scrape_collector_duration_seconds{collector="netstat"} 0.000380304
node_scrape_collector_duration_seconds{collector="nfs"} 8.88e-06
node_scrape_collector_duration_seconds{collector="nfsd"} 2.4593e-05
node_scrape_collector_duration_seconds{collector="nvme"} 0.0001348
node_scrape_collector_duration_seconds{collector="os"} 4.5472e-05
node_scrape_collector_duration_seconds{collector="powersupplyclass"} 9.12e-06
node_scrape_collector_duration_seconds{collector="pressure"} 6.1616e-05
node_scrape_collector_duration_seconds{collector="rapl"} 1.6272e-05
node_scrape_collector_duration_seconds{collector="schedstat"} 0.000106336
node_scrape_collector_duration_seconds{collector="selinux"} 9.44e-07
node_scrape_collector_duration_seconds{collector="sockstat"} 7.7041e-05
node_scrape_collector_duration_seconds{collector="softnet"} 0.000102017
node_scrape_collector_duration_seconds{collector="stat"} 0.000260304
node_scrape_collector_duration_seconds{collector="tapestats"} 4.416e-06
node_scrape_collector_duration_seconds{collector="textfile"} 6.736e-06
node_scrape_collector_duration_seconds{collector="thermal_zone"} 0.000920737
node_scrape_collector_duration_seconds{collector="time"} 3.4704e-05
node_scrape_collector_duration_seconds{collector="timex"} 1.3024e-05
node_scrape_collector_duration_seconds{collector="udp_queues"} 0.00051552
node_scrape_collector_duration_seconds{collector="uname"} 9.376e-06
node_scrape_collector_duration_seconds{collector="vmstat"} 0.000131056
node_scrape_collector_duration_seconds{collector="watchdog"} 0.000101553
node_scrape_collector_duration_seconds{collector="xfs"} 7.216e-06
node_scrape_collector_duration_seconds{collector="zfs"} 4.976e-06
# HELP node_scrape_collector_success node_exporter: Whether a collector succeeded.
# TYPE node_scrape_collector_success gauge
node_scrape_collector_success{collector="arp"} 1
node_scrape_collector_success{collector="bcache"} 1
node_scrape_collector_success{collector="bcachefs"} 0
node_scrape_collector_success{collector="bonding"} 0
node_scrape_collector_success{collector="btrfs"} 1
node_scrape_collector_success{collector="conntrack"} 0
node_scrape_collector_success{collector="cpu"} 1
node_scrape_collector_success{collector="cpufreq"} 1
node_scrape_collector_success{collector="diskstats"} 1
node_scrape_collector_success{collector="dmi"} 1
node_scrape_collector_success{collector="edac"} 1
node_scrape_collector_success{collector="entropy"} 1
node_scrape_collector_success{collector="fibrechannel"} 0
node_scrape_collector_success{collector="filefd"} 1
node_scrape_collector_success{collector="filesystem"} 1
node_scrape_collector_success{collector="hwmon"} 1
node_scrape_collector_success{collector="infiniband"} 1
node_scrape_collector_success{collector="ipvs"} 0
node_scrape_collector_success{collector="kernel_hung"} 1
node_scrape_collector_success{collector="loadavg"} 1
node_scrape_collector_success{collector="mdadm"} 1
node_scrape_collector_success{collector="meminfo"} 1
node_scrape_collector_success{collector="netclass"} 1
node_scrape_collector_success{collector="netdev"} 1
node_scrape_collector_success{collector="netstat"} 1
node_scrape_collector_success{collector="nfs"} 0
node_scrape_collector_success{collector="nfsd"} 0
node_scrape_collector_success{collector="nvme"} 1
node_scrape_collector_success{collector="os"} 1
node_scrape_collector_success{collector="powersupplyclass"} 1
node_scrape_collector_success{collector="pressure"} 1
node_scrape_collector_success{collector="rapl"} 1
node_scrape_collector_success{collector="schedstat"} 1
node_scrape_collector_success{collector="selinux"} 1
node_scrape_collector_success{collector="sockstat"} 1
node_scrape_collector_success{collector="softnet"} 1
node_scrape_collector_success{collector="stat"} 1
node_scrape_collector_success{collector="tapestats"} 0
node_scrape_collector_success{collector="textfile"} 1
node_scrape_collector_success{collector="thermal_zone"} 1
node_scrape_collector_success{collector="time"} 1
node_scrape_collector_success{collector="timex"} 1
node_scrape_collector_success{collector="udp_queues"} 1
node_scrape_collector_success{collector="uname"} 1
node_scrape_collector_success{collector="vmstat"} 1
node_scrape_collector_success{collector="watchdog"} 1
node_scrape_collector_success{collector="xfs"} 1
node_scrape_collector_success{collector="zfs"} 0
# HELP node_selinux_enabled SELinux is enabled, 1 is true, 0 is false
# TYPE node_selinux_enabled gauge
node_selinux_enabled 0
# HELP node_sockstat_FRAG6_inuse Number of FRAG6 sockets in state inuse.
# TYPE node_sockstat_FRAG6_inuse gauge
node_sockstat_FRAG6_inuse 0
# HELP node_sockstat_FRAG6_memory Number of FRAG6 sockets in state memory.
# TYPE node_sockstat_FRAG6_memory gauge
node_sockstat_FRAG6_memory 0
# HELP node_sockstat_FRAG_inuse Number of FRAG sockets in state inuse.
# TYPE node_sockstat_FRAG_inuse gauge
node_sockstat_FRAG_inuse 0
# HELP node_sockstat_FRAG_memory Number of FRAG sockets in state memory.
# TYPE node_sockstat_FRAG_memory gauge
node_sockstat_FRAG_memory 0
# HELP node_sockstat_RAW6_inuse Number of RAW6 sockets in state inuse.
# TYPE node_sockstat_RAW6_inuse gauge
node_sockstat_RAW6_inuse 1
# HELP node_sockstat_RAW_inuse Number of RAW sockets in state inuse.
# TYPE node_sockstat_RAW_inuse gauge
node_sockstat_RAW_inuse 0
# HELP node_sockstat_TCP6_inuse Number of TCP6 sockets in state inuse.
# TYPE node_sockstat_TCP6_inuse gauge
node_sockstat_TCP6_inuse 73
# HELP node_sockstat_TCP_alloc Number of TCP sockets in state alloc.
# TYPE node_sockstat_TCP_alloc gauge
node_sockstat_TCP_alloc 256
# HELP node_sockstat_TCP_inuse Number of TCP sockets in state inuse.
# TYPE node_sockstat_TCP_inuse gauge
node_sockstat_TCP_inuse 157
# HELP node_sockstat_TCP_mem Number of TCP sockets in state mem.
# TYPE node_sockstat_TCP_mem gauge
node_sockstat_TCP_mem 115
# HELP node_sockstat_TCP_mem_bytes Number of TCP sockets in state mem_bytes.
# TYPE node_sockstat_TCP_mem_bytes gauge
node_sockstat_TCP_mem_bytes 471040
# HELP node_sockstat_TCP_orphan Number of TCP sockets in state orphan.
# TYPE node_sockstat_TCP_orphan gauge
node_sockstat_TCP_orphan 0
# HELP node_sockstat_TCP_tw Number of TCP sockets in state tw.
# TYPE node_sockstat_TCP_tw gauge
node_sockstat_TCP_tw 13
# HELP node_sockstat_UDP6_inuse Number of UDP6 sockets in state inuse.
# TYPE node_sockstat_UDP6_inuse gauge
node_sockstat_UDP6_inuse 2
# HELP node_sockstat_UDPLITE6_inuse Number of UDPLITE6 sockets in state inuse.
# TYPE node_sockstat_UDPLITE6_inuse gauge
node_sockstat_UDPLITE6_inuse 0
# HELP node_sockstat_UDPLITE_inuse Number of UDPLITE sockets in state inuse.
# TYPE node_sockstat_UDPLITE_inuse gauge
node_sockstat_UDPLITE_inuse 0
# HELP node_sockstat_UDP_inuse Number of UDP sockets in state inuse.
# TYPE node_sockstat_UDP_inuse gauge
node_sockstat_UDP_inuse 5
# HELP node_sockstat_UDP_mem Number of UDP sockets in state mem.
# TYPE node_sockstat_UDP_mem gauge
node_sockstat_UDP_mem 1792
# HELP node_sockstat_UDP_mem_bytes Number of UDP sockets in state mem_bytes.
# TYPE node_sockstat_UDP_mem_bytes gauge
node_sockstat_UDP_mem_bytes 7.340032e+06
# HELP node_sockstat_sockets_used Number of IPv4 sockets in use.
# TYPE node_sockstat_sockets_used gauge
node_sockstat_sockets_used 738
# HELP node_softnet_backlog_len Softnet backlog status
# TYPE node_softnet_backlog_len gauge
node_softnet_backlog_len{cpu="0"} 0
node_softnet_backlog_len{cpu="1"} 0
node_softnet_backlog_len{cpu="10"} 0
node_softnet_backlog_len{cpu="11"} 0
node_softnet_backlog_len{cpu="12"} 0
node_softnet_backlog_len{cpu="13"} 0
node_softnet_backlog_len{cpu="14"} 0
node_softnet_backlog_len{cpu="15"} 0
node_softnet_backlog_len{cpu="16"} 0
node_softnet_backlog_len{cpu="17"} 0
node_softnet_backlog_len{cpu="18"} 0
node_softnet_backlog_len{cpu="19"} 0
node_softnet_backlog_len{cpu="2"} 0
node_softnet_backlog_len{cpu="3"} 0
node_softnet_backlog_len{cpu="4"} 0
node_softnet_backlog_len{cpu="5"} 0
node_softnet_backlog_len{cpu="6"} 0
node_softnet_backlog_len{cpu="7"} 0
node_softnet_backlog_len{cpu="8"} 0
node_softnet_backlog_len{cpu="9"} 0
# HELP node_softnet_cpu_collision_total Number of collision occur while obtaining device lock while transmitting
# TYPE node_softnet_cpu_collision_total counter
node_softnet_cpu_collision_total{cpu="0"} 0
node_softnet_cpu_collision_total{cpu="1"} 0
node_softnet_cpu_collision_total{cpu="10"} 0
node_softnet_cpu_collision_total{cpu="11"} 0
node_softnet_cpu_collision_total{cpu="12"} 0
node_softnet_cpu_collision_total{cpu="13"} 0
node_softnet_cpu_collision_total{cpu="14"} 0
node_softnet_cpu_collision_total{cpu="15"} 0
node_softnet_cpu_collision_total{cpu="16"} 0
node_softnet_cpu_collision_total{cpu="17"} 0
node_softnet_cpu_collision_total{cpu="18"} 0
node_softnet_cpu_collision_total{cpu="19"} 0
node_softnet_cpu_collision_total{cpu="2"} 0
node_softnet_cpu_collision_total{cpu="3"} 0
node_softnet_cpu_collision_total{cpu="4"} 0
node_softnet_cpu_collision_total{cpu="5"} 0
node_softnet_cpu_collision_total{cpu="6"} 0
node_softnet_cpu_collision_total{cpu="7"} 0
node_softnet_cpu_collision_total{cpu="8"} 0
node_softnet_cpu_collision_total{cpu="9"} 0
# HELP node_softnet_dropped_total Number of dropped packets
# TYPE node_softnet_dropped_total counter
node_softnet_dropped_total{cpu="0"} 0
node_softnet_dropped_total{cpu="1"} 0
node_softnet_dropped_total{cpu="10"} 0
node_softnet_dropped_total{cpu="11"} 0
node_softnet_dropped_total{cpu="12"} 0
node_softnet_dropped_total{cpu="13"} 0
node_softnet_dropped_total{cpu="14"} 0
node_softnet_dropped_total{cpu="15"} 0
node_softnet_dropped_total{cpu="16"} 0
node_softnet_dropped_total{cpu="17"} 0
node_softnet_dropped_total{cpu="18"} 0
node_softnet_dropped_total{cpu="19"} 0
node_softnet_dropped_total{cpu="2"} 0
node_softnet_dropped_total{cpu="3"} 0
node_softnet_dropped_total{cpu="4"} 0
node_softnet_dropped_total{cpu="5"} 0
node_softnet_dropped_total{cpu="6"} 0
node_softnet_dropped_total{cpu="7"} 0
node_softnet_dropped_total{cpu="8"} 0
node_softnet_dropped_total{cpu="9"} 0
# HELP node_softnet_flow_limit_count_total Number of times flow limit has been reached
# TYPE node_softnet_flow_limit_count_total counter
node_softnet_flow_limit_count_total{cpu="0"} 0
node_softnet_flow_limit_count_total{cpu="1"} 0
node_softnet_flow_limit_count_total{cpu="10"} 0
node_softnet_flow_limit_count_total{cpu="11"} 0
node_softnet_flow_limit_count_total{cpu="12"} 0
node_softnet_flow_limit_count_total{cpu="13"} 0
node_softnet_flow_limit_count_total{cpu="14"} 0
node_softnet_flow_limit_count_total{cpu="15"} 0
node_softnet_flow_limit_count_total{cpu="16"} 0
node_softnet_flow_limit_count_total{cpu="17"} 0
node_softnet_flow_limit_count_total{cpu="18"} 0
node_softnet_flow_limit_count_total{cpu="19"} 0
node_softnet_flow_limit_count_total{cpu="2"} 0
node_softnet_flow_limit_count_total{cpu="3"} 0
node_softnet_flow_limit_count_total{cpu="4"} 0
node_softnet_flow_limit_count_total{cpu="5"} 0
node_softnet_flow_limit_count_total{cpu="6"} 0
node_softnet_flow_limit_count_total{cpu="7"} 0
node_softnet_flow_limit_count_total{cpu="8"} 0
node_softnet_flow_limit_count_total{cpu="9"} 0
# HELP node_softnet_processed_total Number of processed packets
# TYPE node_softnet_processed_total counter
node_softnet_processed_total{cpu="0"} 181387
node_softnet_processed_total{cpu="1"} 48723
node_softnet_processed_total{cpu="10"} 27993
node_softnet_processed_total{cpu="11"} 33331
node_softnet_processed_total{cpu="12"} 41354
node_softnet_processed_total{cpu="13"} 8.0209469e+07
node_softnet_processed_total{cpu="14"} 87315
node_softnet_processed_total{cpu="15"} 135837
node_softnet_processed_total{cpu="16"} 118804
node_softnet_processed_total{cpu="17"} 107124
node_softnet_processed_total{cpu="18"} 114443
node_softnet_processed_total{cpu="19"} 122588
node_softnet_processed_total{cpu="2"} 41753
node_softnet_processed_total{cpu="3"} 30384
node_softnet_processed_total{cpu="4"} 3.68276e+06
node_softnet_processed_total{cpu="5"} 35373
node_softnet_processed_total{cpu="6"} 30989
node_softnet_processed_total{cpu="7"} 28947
node_softnet_processed_total{cpu="8"} 39609
node_softnet_processed_total{cpu="9"} 21179
# HELP node_softnet_received_rps_total Number of times cpu woken up received_rps
# TYPE node_softnet_received_rps_total counter
node_softnet_received_rps_total{cpu="0"} 0
node_softnet_received_rps_total{cpu="1"} 0
node_softnet_received_rps_total{cpu="10"} 0
node_softnet_received_rps_total{cpu="11"} 0
node_softnet_received_rps_total{cpu="12"} 0
node_softnet_received_rps_total{cpu="13"} 0
node_softnet_received_rps_total{cpu="14"} 0
node_softnet_received_rps_total{cpu="15"} 0
node_softnet_received_rps_total{cpu="16"} 0
node_softnet_received_rps_total{cpu="17"} 0
node_softnet_received_rps_total{cpu="18"} 0
node_softnet_received_rps_total{cpu="19"} 0
node_softnet_received_rps_total{cpu="2"} 0
node_softnet_received_rps_total{cpu="3"} 0
node_softnet_received_rps_total{cpu="4"} 0
node_softnet_received_rps_total{cpu="5"} 0
node_softnet_received_rps_total{cpu="6"} 0
node_softnet_received_rps_total{cpu="7"} 0
node_softnet_received_rps_total{cpu="8"} 0
node_softnet_received_rps_total{cpu="9"} 0
# HELP node_softnet_times_squeezed_total Number of times processing packets ran out of quota
# TYPE node_softnet_times_squeezed_total counter
node_softnet_times_squeezed_total{cpu="0"} 4
node_softnet_times_squeezed_total{cpu="1"} 4
node_softnet_times_squeezed_total{cpu="10"} 4
node_softnet_times_squeezed_total{cpu="11"} 4
node_softnet_times_squeezed_total{cpu="12"} 4
node_softnet_times_squeezed_total{cpu="13"} 4
node_softnet_times_squeezed_total{cpu="14"} 4
node_softnet_times_squeezed_total{cpu="15"} 4
node_softnet_times_squeezed_total{cpu="16"} 4
node_softnet_times_squeezed_total{cpu="17"} 4
node_softnet_times_squeezed_total{cpu="18"} 4
node_softnet_times_squeezed_total{cpu="19"} 4
node_softnet_times_squeezed_total{cpu="2"} 4
node_softnet_times_squeezed_total{cpu="3"} 4
node_softnet_times_squeezed_total{cpu="4"} 4
node_softnet_times_squeezed_total{cpu="5"} 4
node_softnet_times_squeezed_total{cpu="6"} 4
node_softnet_times_squeezed_total{cpu="7"} 4
node_softnet_times_squeezed_total{cpu="8"} 4
node_softnet_times_squeezed_total{cpu="9"} 4
# HELP node_textfile_scrape_error 1 if there was an error opening or reading a file, 0 otherwise
# TYPE node_textfile_scrape_error gauge
node_textfile_scrape_error 0
# HELP node_thermal_zone_temp Zone temperature in Celsius
# TYPE node_thermal_zone_temp gauge
node_thermal_zone_temp{type="acpitz",zone="0"} 54.8
node_thermal_zone_temp{type="acpitz",zone="1"} 52
node_thermal_zone_temp{type="acpitz",zone="2"} 52.9
node_thermal_zone_temp{type="acpitz",zone="3"} 52
node_thermal_zone_temp{type="acpitz",zone="4"} 52.9
node_thermal_zone_temp{type="acpitz",zone="5"} 54.8
node_thermal_zone_temp{type="acpitz",zone="6"} 53.7
# HELP node_time_clocksource_available_info Available clocksources read from '/sys/devices/system/clocksource'.
# TYPE node_time_clocksource_available_info gauge
node_time_clocksource_available_info{clocksource="arch_sys_counter",device="0"} 1
# HELP node_time_clocksource_current_info Current clocksource read from '/sys/devices/system/clocksource'.
# TYPE node_time_clocksource_current_info gauge
node_time_clocksource_current_info{clocksource="arch_sys_counter",device="0"} 1
# HELP node_time_seconds System time in seconds since epoch (1970).
# TYPE node_time_seconds gauge
node_time_seconds 1.7762819822297049e+09
# HELP node_time_zone_offset_seconds System time zone offset in seconds.
# TYPE node_time_zone_offset_seconds gauge
node_time_zone_offset_seconds{time_zone="UTC"} 0
# HELP node_timex_estimated_error_seconds Estimated error in seconds.
# TYPE node_timex_estimated_error_seconds gauge
node_timex_estimated_error_seconds 0
# HELP node_timex_frequency_adjustment_ratio Local clock frequency adjustment.
# TYPE node_timex_frequency_adjustment_ratio gauge
node_timex_frequency_adjustment_ratio 1.0000008038482666
# HELP node_timex_loop_time_constant Phase-locked loop time constant.
# TYPE node_timex_loop_time_constant gauge
node_timex_loop_time_constant 7
# HELP node_timex_maxerror_seconds Maximum error in seconds.
# TYPE node_timex_maxerror_seconds gauge
node_timex_maxerror_seconds 0.556
# HELP node_timex_offset_seconds Time offset in between local system and reference clock.
# TYPE node_timex_offset_seconds gauge
node_timex_offset_seconds 0.000127351
# HELP node_timex_pps_calibration_total Pulse per second count of calibration intervals.
# TYPE node_timex_pps_calibration_total counter
node_timex_pps_calibration_total 0
# HELP node_timex_pps_error_total Pulse per second count of calibration errors.
# TYPE node_timex_pps_error_total counter
node_timex_pps_error_total 0
# HELP node_timex_pps_frequency_hertz Pulse per second frequency.
# TYPE node_timex_pps_frequency_hertz gauge
node_timex_pps_frequency_hertz 0
# HELP node_timex_pps_jitter_seconds Pulse per second jitter.
# TYPE node_timex_pps_jitter_seconds gauge
node_timex_pps_jitter_seconds 0
# HELP node_timex_pps_jitter_total Pulse per second count of jitter limit exceeded events.
# TYPE node_timex_pps_jitter_total counter
node_timex_pps_jitter_total 0
# HELP node_timex_pps_shift_seconds Pulse per second interval duration.
# TYPE node_timex_pps_shift_seconds gauge
node_timex_pps_shift_seconds 0
# HELP node_timex_pps_stability_exceeded_total Pulse per second count of stability limit exceeded events.
# TYPE node_timex_pps_stability_exceeded_total counter
node_timex_pps_stability_exceeded_total 0
# HELP node_timex_pps_stability_hertz Pulse per second stability, average of recent frequency changes.
# TYPE node_timex_pps_stability_hertz gauge
node_timex_pps_stability_hertz 0
# HELP node_timex_status Value of the status array bits.
# TYPE node_timex_status gauge
node_timex_status 8193
# HELP node_timex_sync_status Is clock synchronized to a reliable server (1 = yes, 0 = no).
# TYPE node_timex_sync_status gauge
node_timex_sync_status 1
# HELP node_timex_tai_offset_seconds International Atomic Time (TAI) offset.
# TYPE node_timex_tai_offset_seconds gauge
node_timex_tai_offset_seconds 0
# HELP node_timex_tick_seconds Seconds between clock ticks.
# TYPE node_timex_tick_seconds gauge
node_timex_tick_seconds 0.01
# HELP node_udp_queues Number of allocated memory in the kernel for UDP datagrams in bytes.
# TYPE node_udp_queues gauge
node_udp_queues{ip="v4",queue="rx"} 0
node_udp_queues{ip="v4",queue="tx"} 0
node_udp_queues{ip="v6",queue="rx"} 0
node_udp_queues{ip="v6",queue="tx"} 0
# HELP node_uname_info Labeled system information as provided by the uname system call.
# TYPE node_uname_info gauge
node_uname_info{domainname="(none)",machine="aarch64",nodename="spark-1",release="6.17.0-1014-nvidia",sysname="Linux",version="#14-Ubuntu SMP PREEMPT_DYNAMIC Tue Mar 17 19:01:40 UTC 2026"} 1
# HELP node_vmstat_oom_kill /proc/vmstat information field oom_kill.
# TYPE node_vmstat_oom_kill untyped
node_vmstat_oom_kill 0
# HELP node_vmstat_pgfault /proc/vmstat information field pgfault.
# TYPE node_vmstat_pgfault untyped
node_vmstat_pgfault 4.28169965e+08
# HELP node_vmstat_pgmajfault /proc/vmstat information field pgmajfault.
# TYPE node_vmstat_pgmajfault untyped
node_vmstat_pgmajfault 189993
# HELP node_vmstat_pgpgin /proc/vmstat information field pgpgin.
# TYPE node_vmstat_pgpgin untyped
node_vmstat_pgpgin 1.81124293e+08
# HELP node_vmstat_pgpgout /proc/vmstat information field pgpgout.
# TYPE node_vmstat_pgpgout untyped
node_vmstat_pgpgout 2.90030629e+08
# HELP node_vmstat_pswpin /proc/vmstat information field pswpin.
# TYPE node_vmstat_pswpin untyped
node_vmstat_pswpin 327442
# HELP node_vmstat_pswpout /proc/vmstat information field pswpout.
# TYPE node_vmstat_pswpout untyped
node_vmstat_pswpout 878225
# HELP node_watchdog_bootstatus Value of /sys/class/watchdog/<watchdog>/bootstatus
# TYPE node_watchdog_bootstatus gauge
node_watchdog_bootstatus{name="watchdog0"} 0
# HELP node_watchdog_fw_version Value of /sys/class/watchdog/<watchdog>/fw_version
# TYPE node_watchdog_fw_version gauge
node_watchdog_fw_version{name="watchdog0"} 0
# HELP node_watchdog_info Info of /sys/class/watchdog/<watchdog>
# TYPE node_watchdog_info gauge
node_watchdog_info{identity="SBSA Generic Watchdog",name="watchdog0",options="0x81a0",pretimeout_governor="",state="inactive",status="0x0"} 1
# HELP node_watchdog_nowayout Value of /sys/class/watchdog/<watchdog>/nowayout
# TYPE node_watchdog_nowayout gauge
node_watchdog_nowayout{name="watchdog0"} 0
# HELP node_watchdog_timeleft_seconds Value of /sys/class/watchdog/<watchdog>/timeleft
# TYPE node_watchdog_timeleft_seconds gauge
node_watchdog_timeleft_seconds{name="watchdog0"} 1.266874885e+09
# HELP node_watchdog_timeout_seconds Value of /sys/class/watchdog/<watchdog>/timeout
# TYPE node_watchdog_timeout_seconds gauge
node_watchdog_timeout_seconds{name="watchdog0"} 10
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 44.37
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 524287
# HELP process_network_receive_bytes_total Number of bytes received by the process over the network.
# TYPE process_network_receive_bytes_total counter
process_network_receive_bytes_total 1.68833792774e+11
# HELP process_network_transmit_bytes_total Number of bytes sent by the process over the network.
# TYPE process_network_transmit_bytes_total counter
process_network_transmit_bytes_total 1.79102161049e+11
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 9
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 1.9509248e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.77627649634e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 1.306628096e+09
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes 1.8446744073709552e+19
# HELP promhttp_metric_handler_errors_total Total number of internal errors encountered by the promhttp metric handler.
# TYPE promhttp_metric_handler_errors_total counter
promhttp_metric_handler_errors_total{cause="encoding"} 0
promhttp_metric_handler_errors_total{cause="gathering"} 0
# HELP promhttp_metric_handler_requests_in_flight Current number of scrapes being served.
# TYPE promhttp_metric_handler_requests_in_flight gauge
promhttp_metric_handler_requests_in_flight 1
# HELP promhttp_metric_handler_requests_total Total number of scrapes by HTTP status code.
# TYPE promhttp_metric_handler_requests_total counter
promhttp_metric_handler_requests_total{code="200"} 958
promhttp_metric_handler_requests_total{code="500"} 0
promhttp_metric_handler_requests_total{code="503"} 0
