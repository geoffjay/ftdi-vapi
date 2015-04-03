/**
 * Updated Vapi for libftdi.
 */

[CCode (cprefix = "FTDI_", lower_case_prefix = "ftdi_", cheader_filename = "ftdi.h")]
namespace FTDI {

	public const int DEFAULT_EEPROM_SIZE;

    /** */
	[CCode (cname = "enum ftdi_chip_type", cprefix = "TYPE_", has_type_id = false)]
	public enum ChipType {
		AM,
		BM,
		2232C,
		R,
		2232H,
	    4232H,
		232H
	}

    /** */
	[CCode (cname = "enum ftdi_parity_type", cprefix = "", has_type_id = false)]
	public enum ParityType {
		NONE,
		ODD,
		EVEN,
		MARK,
		SPACE
	}

    /** */
	[CCode (cname = "enum ftdi_stopbits_type", cprefix = "STOP_", has_type_id = false)]
	public enum StopBitsType {
		BIT_1,
		BIT_15,
		BIT_2
	}

    /** */
	[CCode (cname = "enum ftdi_bits_type", cprefix = "", has_type_id = false)]
	public enum BitsType {
		BITS_7,
		BITS_8
	}

    /** */
	[CCode (cname = "enum ftdi_break_type", cprefix="BREAK_", has_type_id = false)]
	public enum BreakType {
		OFF,
		ON,
	}

    /** */
	[CCode (cname = "enum ftdi_mpsse_mode", cprefix = "BITMODE_", has_type_id = false)]
	public enum MPSSEMode {
		RESET,
		BITBANG,
		MPSSE,
		SYNCBB,
		MCU,
		OPTO,
		CBUS,
		SYNCFF,
		FT1284
	}

    /** */
	[CCode (cname = "enum ftdi_interface", cprefix = "INTERFACE_", has_type_id = false)]
	public enum Interface {
		ANY,
		A,
		B,
		C,
		D
	}

    /** */
	[CCode (cname = "enum ftdi_module_detach_mode", cprefix = "", has_type_id = false)]
	public enum ModuleDetachMode {
        AUTO_DETACH_SIO_MODULE,
        DONT_DETACH_SIO_MODULE
	}

    /** */
	[CCode (cprefix="MPSSE_")]
	namespace ShiftingCommands {
		public const int WRITE_NEG;
		public const int BITMODE;
		public const int READ_NEG;
		public const int LSB;
		public const int DO_WRITE;
		public const int DO_READ;
		public const int WRITE_TMS;
	}

    /** */
	[CCode (cprefix="")]
	namespace MPSSECommands {
		public const int SET_BITS_LOW;
		public const int SET_BITS_HIGH;
		public const int GET_BITS_LOW;
		public const int GET_BITS_HIGH;
		public const int LOOPBACK_START;
		public const int LOOPBACK_END;
		public const int TCK_DIVISOR;
		public const int SEND_IMMEDIATE;
		public const int WAIT_ON_HIGH;
		public const int WAIT_ON_LOW;

        [CCode (cprefix="")]
        namespace HType {
            public const int DIS_DIV_5;
            public const int EN_DIV_5;
            public const int EN_3_PHASE;
            public const int DIS_3_PHASE;
            public const int CLK_BITS;
            public const int CLK_BYTES;
            public const int CLK_WAIT_HIGH;
            public const int CLK_WAIT_LOW;
            public const int EN_ADAPTIVE;
            public const int DIS_ADAPTIVE;
            public const int CLK_BYTES_OR_HIGH;
            public const int CLK_BYTES_OR_LOW;
        }

        [CCode (cprefix="")]
        namespace FT232H {
            public const int DRIVE_OPEN_COLLECTOR;
        }
	}

    /** */
	[CCode (cname="DIV_VALUE")]
	public int div_value (int rate);

    /** */
	[CCode (cprefix="")]
	namespace HostEmultationModeCommands {
		public const int SEND_IMMEDIATE;
		public const int WAIT_ON_HIGH;
		public const int WAIT_ON_LOW;
		public const int READ_SHORT;
		public const int READ_EXTENDED;
		public const int WRITE_SHORT;
		public const int WRITE_EXTENDED;
	}

    /** TODO: this section is incomplete */
	[CCode (cprefix="SIO_")]
	public const int RESET;
	[CCode (cprefix="SIO_")]
	public const int MODEM_CTRL;
	[CCode (cprefix="SIO_")]
	public const int SET_FLOW_CTRL;
	[CCode (cprefix="SIO_")]
	public const int SET_BAUD_RATE;
	[CCode (cprefix="SIO_")]
	public const int SET_DATA;
    /*
	 *[CCode (cprefix="SIO_")]
	 *public const int RESET_REQUEST_TYPE;
     */
	[CCode (cprefix="SIO_")]
	public const int RESET_REQUEST;
	[CCode (cprefix="SIO_")]
	public const int RESET_SIO;
	[CCode (cprefix="SIO_")]
	public const int RESET_PURGE_RX;
	[CCode (cprefix="SIO_")]
	public const int RESET_PURGE_TX;
    /*
	 *[CCode (cprefix="SIO_")]
	 *public const int SET_BAUDRATE_REQUEST_TYPE;
     */
	[CCode (cprefix="SIO_")]
	public const int SET_BAUDRATE_REQUEST;
    /*
	 *[CCode (cprefix="SIO_")]
	 *public const int SET_DATA_REQUEST_TYPE;
     */
	[CCode (cprefix="SIO_")]
	public const int SET_DATA_REQUEST;
	[CCode (cprefix="SIO_")]
	public const int SET_FLOW_CTRL_REQUEST;
    /*
	 *[CCode (cprefix="SIO_")]
	 *public const int SET_FLOW_CTRL_REQUEST_TYPE;
     */
	[CCode (cprefix="SIO_")]
	public const int DISABLE_FLOW_CTRL;
	[CCode (cprefix="SIO_")]
	public const int RTS_CTS_HS;
	[CCode (cprefix="SIO_")]
	public const int DTR_DSR_HS;
	[CCode (cprefix="SIO_")]
	public const int XON_XOFF_HS;
    /*
	 *[CCode (cprefix="SIO_")]
	 *public const int SET_MODEM_CTRL_REQUEST_TYPE;
     */
	[CCode (cprefix="SIO_")]
	public const int SET_MODEM_CTRL_REQUEST;
	[CCode (cprefix="SIO_")]
	public const int SET_DTR_MASK;
	[CCode (cprefix="SIO_")]
	public const int SET_DTR_HIGH;
	[CCode (cprefix="SIO_")]
	public const int SET_DTR_LOW;
	[CCode (cprefix="SIO_")]
	public const int SET_RTS_MASK;
	[CCode (cprefix="SIO_")]
	public const int SET_RTS_HIGH;
	[CCode (cprefix="SIO_")]
	public const int SET_RTS_LOW;

	public const int URB_USERCONTEXT_COOKIE;

    /** */
    [CCode (cname = "struct ftdi_transfer_control", cprefix="", has_type_id = false)]
    public struct TransferControl {
        public int completed;
        public uchar[] buf;
        public int size;
        public int offset;
        public Context ftdi;
        public LibUSB.Transfer transfer;
    }

    /** TODO: should these be []s ??? */
	[CCode (cname = "struct ftdi_device_list", destroy_function = "ftdi_list_free", has_type_id = false)]
	public struct DeviceList {
		public DeviceList* next;
		public LibUSB.Device* dev;
	}

	[CCode (cname = "struct ftdi_eeprom", cprefix="ftdi_eeprom_", has_type_id = false)]
	public struct EEPROM {
        /** TODO: find out where these came from or if they're still needed */
		public int vendor_id;
		public int product_id;
		public int self_powered;
		public int remote_wakeup;
		public int BM_type_chip;
		public int in_is_isochronous;
		public int out_is_isochronous;
		public int suspend_pull_downs;
		public int use_serial;
		public int change_usb_version;
		public int usb_version;
		public int max_power;
		public unowned string manufacturer;
		public unowned string product;
		public unowned string serial;
		public int size;
		public void initdefaults ();
		public int build ([CCode (array_length = false)] uchar[] output);
        public int decode (uchar[] buffer);
	}

    [CCode (cname = "enum ftdi_eeprom_value", cprefix="", has_type_id = false)]
    public enum EEPROMValue {
        VENDOR_ID,
        PRODUCT_ID,
        SELF_POWERED,
        REMOTE_WAKEUP,
        IS_NOT_PNP,
        SUSPEND_DBUS7,
        IN_IS_ISOCHRONOUS,
        OUT_IS_ISOCHRONOUS,
        SUSPEND_PULL_DOWNS,
        USE_SERIAL,
        USB_VERSION,
        USE_USB_VERSION,
        MAX_POWER,
        CHANNEL_A_TYPE,
        CHANNEL_B_TYPE,
        CHANNEL_A_DRIVER,
        CHANNEL_B_DRIVER,
        CBUS_FUNCTION_0,
        CBUS_FUNCTION_1,
        CBUS_FUNCTION_2,
        CBUS_FUNCTION_3,
        CBUS_FUNCTION_4,
        CBUS_FUNCTION_5,
        CBUS_FUNCTION_6,
        CBUS_FUNCTION_7,
        CBUS_FUNCTION_8,
        CBUS_FUNCTION_9,
        HIGH_CURRENT,
        HIGH_CURRENT_A,
        HIGH_CURRENT_B,
        INVERT,
        GROUP0_DRIVE,
        GROUP0_SCHMITT,
        GROUP0_SLEW,
        GROUP1_DRIVE,
        GROUP1_SCHMITT,
        GROUP1_SLEW,
        GROUP2_DRIVE,
        GROUP2_SCHMITT,
        GROUP2_SLEW,
        GROUP3_DRIVE,
        GROUP3_SCHMITT,
        GROUP3_SLEW,
        CHIP_SIZE,
        CHIP_TYPE,
        POWER_SAVE,
        CLOCK_POLARITY,
        DATA_ORDER,
        FLOW_CONTROL,
        CHANNEL_C_DRIVER,
        CHANNEL_D_DRIVER,
        CHANNEL_A_RS485,
        CHANNEL_B_RS485,
        CHANNEL_C_RS485,
        CHANNEL_D_RS485
    }

    [CCode (cname = "struct size_and_time", cprefix = "", has_type_id = false)]
    public struct SizeTime {
        [CCode (cname = "totalBytes")]
        public uint64 total_bytes;
        public GLib.TimeVal time;
    }

    [CCode (cname = "FTDIProgressInfo", cprefix = "", has_type_id = false)]
    public struct ProgressInfo {
        public SizeTime first;
        public SizeTime prev;
        public SizeTime current;
        [CCode (cname = "totalTime")]
        public double total_time;
        [CCode (cname = "totalRate")]
        public double total_rate;
        [CCode (cname = "currentRate")]
        public double current_rate;
    }

    [CCode (cname = "FTDIStreamCallback", has_target = false)]
    public delegate int StreamCallback (uint8[] buffer,
                                        ProgressInfo progress,
                                        [CCode (type = "void*")]
                                        void* userdata);

    [CCode (cname = "struct ftdi_version_info", cprefix = "", has_type_id = false)]
    public struct VersionInfo {
        public int major;
        public int minor;
        public int micro;
        public string version_str;
        public string snapshot_str;
    }

    public static VersionInfo get_library_version ();
    public static int transfer_data_done (TransferControl tc);

	[Compact]
	[CCode (cname = "struct ftdi_context", cprefix ="ftdi_", free_function="ftdi_free")]
	public class Context {

        /* USB specific */
        public LibUSB.Context usb_ctx;
		public LibUSB.DeviceHandle usb_dev;
		public int usb_read_timeout;
		public int usb_write_timeout;

        /* FTDI specific */
		public ChipType type;
		public int baudrate;
		public uchar bitbang_enabled;
		[CCode (array_length = false)]
		public uchar[] readbuffer;
		public uint readbuffer_offset;
		public uint readbuffer_remaining;
		public uint readbuffer_chunksize;
		public uint writebuffer_chunksize;
        public uint max_packet_size;

        /* FTDI FT2232C requirements */
		public int @interface;
		public int index;
		public int in_ep;
		public int out_ep;

        public uchar bitbang_mode;
        public EEPROM eeprom;
        public unowned string error_str;
        ModuleDetachMode module_detach_mode;

        [Deprecated]
        public int eeprom_size;
        [Deprecated]
        [CCode (array_length_cname = "async_usb_buffer_size")]
        public char[] async_usb_buffer;

		[CCode (cname = "ftdi_new")]
		public Context ();
		public int init ();
		public int set_interface (Interface iface);

		public void deinit ();
		public void set_usbdev (LibUSB.DeviceHandle usbdev);

		public int usb_find_all (out DeviceList devlist, int vendor, int product);
		public int usb_get_strings (LibUSB.Device usbdev,
                                    [CCode (array_length = false)]
                                    char[] manufacturer,
                                    int manufacturer_len,
                                    [CCode (array_length = false)]
                                    char[] description,
                                    int description_len,
                                    [CCode (array_length = false)]
                                    char[] serial,
                                    int serial_len);

		public int usb_open (int vendor, int product);
		public int usb_open_desc (int vendor, int product, string description, string serial);
		public int usb_open_desc_index (int vendor, int product, string description, string serial, uint index);
		public int usb_open_dev (LibUSB.Device usbdev);
		public int usb_open_string (string description);

		public int usb_close ();
		public int usb_reset ();
		public int usb_purge_rx_buffers ();
		public int usb_purge_tx_buffers ();
		public int usb_purge_buffers ();

		public int set_baudrate (int baudrate);
		public int set_line_property (BitsType bits, StopBitsType sbit, ParityType parity);
		public int set_line_property2 (BitsType bits, StopBitsType sbit, ParityType parity, BreakType break_type);

		public int read_data (uchar[] buf);
		public int read_data_set_chunksize (int chunksize);
		public int read_data_get_chunksize (out int chunksize);

		public int write_data (uchar[] buf);
		public int write_data_set_chunksize (int chunksize);
		public int write_data_get_chunksize (out int chunksize);

        [CCode (cname = "ftdi_readstream")]
        public int read_stream ([CCode (type = "FTDIStreamCallback*")]
                                StreamCallback callback,
                                [CCode (type = "void*")]
                                void* userdata,
                                [CCode (cname = "packetsPerTransfer")]
                                int packets_per_transfer,
                                [CCode (cname = "numTransfers")]
                                int num_transfers);
        public TransferControl write_data_submit ([CCode (array_length = false)] uchar[] buf, int size);
		public void async_complete (int wait_for_more);

        public TransferControl read_data_submit ([CCode (array_length = false)] uchar[] buf, int size);

		public int set_bitmode (uchar bitmask, uchar mode);
		public int disable_bitbang ();
		public int read_pins (out uchar pins);

        [Deprecated]
		public int write_data_async (uchar[] buf);
        [Deprecated]
		public int enable_bitbang (uchar bitmask);

		public int set_latency_timer (uchar latency);
		public int get_latency_timer (out uchar latency);

		public int poll_modem_status (out ushort status);

		public int setflowctrl (int flowctrl);
		public int setdtr_rts (int dtr, int rts);
		public int setdtr (int state);
		public int setrts (int state);

		public int set_event_char (uchar eventch, uchar enable);
		public int set_error_char (uchar errorch, uchar enable);

        public int eeprom_initdefaults (string manufacturer, string product, string serial);
        public int eeprom_build ();
        public int eeprom_decode (int verbose);

        public int get_eeprom_value (EEPROMValue value_name, [CCode (array_length = false)] int[] value);
        public int set_eeprom_value (EEPROMValue value_name, int value);

        public int get_eeprom_buf (uchar[] buf, int size);
        public int set_eeprom_buf (uchar[] buf, int size);

        [Deprecated]
		public void eeprom_setsize (EEPROM eeprom, int size);
        [Deprecated]
		public int read_eeprom_getsize (uchar[] eeprom);

		public int read_eeprom ();
		public int read_chipid (out uint chipid);
		public int write_eeprom ();
		public int erase_eeprom ();

        public int read_eeprom_location (int eeprom_addr, [CCode (array_length = false)] ushort[] eeprom_val);
        public int write_eeprom_location (int eeprom_addr, ushort eeprom_val);

		public unowned string get_error_string ();
	}
}
