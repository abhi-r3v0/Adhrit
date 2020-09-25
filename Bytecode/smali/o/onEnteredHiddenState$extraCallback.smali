.class public final Lo/onEnteredHiddenState$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onEnteredHiddenState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final abc_action_bar_title_item:I = 0x7f0e0000

.field public static final abc_action_bar_up_container:I = 0x7f0e0001

.field public static final abc_action_menu_item_layout:I = 0x7f0e0002

.field public static final abc_action_menu_layout:I = 0x7f0e0003

.field public static final abc_action_mode_bar:I = 0x7f0e0004

.field public static final abc_action_mode_close_item_material:I = 0x7f0e0005

.field public static final abc_activity_chooser_view:I = 0x7f0e0006

.field public static final abc_activity_chooser_view_list_item:I = 0x7f0e0007

.field public static final abc_alert_dialog_button_bar_material:I = 0x7f0e0008

.field public static final abc_alert_dialog_material:I = 0x7f0e0009

.field public static final abc_alert_dialog_title_material:I = 0x7f0e000a

.field public static final abc_cascading_menu_item_layout:I = 0x7f0e000b

.field public static final abc_dialog_title_material:I = 0x7f0e000c

.field public static final abc_expanded_menu_layout:I = 0x7f0e000d

.field public static final abc_list_menu_item_checkbox:I = 0x7f0e000e

.field public static final abc_list_menu_item_icon:I = 0x7f0e000f

.field public static final abc_list_menu_item_layout:I = 0x7f0e0010

.field public static final abc_list_menu_item_radio:I = 0x7f0e0011

.field public static final abc_popup_menu_header_item_layout:I = 0x7f0e0012

.field public static final abc_popup_menu_item_layout:I = 0x7f0e0013

.field public static final abc_screen_content_include:I = 0x7f0e0014

.field public static final abc_screen_simple:I = 0x7f0e0015

.field public static final abc_screen_simple_overlay_action_mode:I = 0x7f0e0016

.field public static final abc_screen_toolbar:I = 0x7f0e0017

.field public static final abc_search_dropdown_item_icons_2line:I = 0x7f0e0018

.field public static final abc_search_view:I = 0x7f0e0019

.field public static final abc_select_dialog_material:I = 0x7f0e001a

.field public static final abc_tooltip:I = 0x7f0e001b

.field public static final custom_dialog:I = 0x7f0e0053

.field public static final notification_action:I = 0x7f0e02d1

.field public static final notification_action_tombstone:I = 0x7f0e02d2

.field public static final notification_template_custom_big:I = 0x7f0e02d9

.field public static final notification_template_icon_group:I = 0x7f0e02da

.field public static final notification_template_part_chronometer:I = 0x7f0e02de

.field public static final notification_template_part_time:I = 0x7f0e02df

.field public static final onNavigationEvent:Lo/onEnteredHiddenState$extraCallback;

.field public static final select_dialog_item_material:I = 0x7f0e0307

.field public static final select_dialog_multichoice_material:I = 0x7f0e0308

.field public static final select_dialog_singlechoice_material:I = 0x7f0e0309

.field public static final support_simple_spinner_dropdown_item:I = 0x7f0e031b

.field public static final updater_dlg:I = 0x7f0e0332


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/onEnteredHiddenState$extraCallback;

    invoke-direct {v0}, Lo/onEnteredHiddenState$extraCallback;-><init>()V

    sput-object v0, Lo/onEnteredHiddenState$extraCallback;->onNavigationEvent:Lo/onEnteredHiddenState$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)"

    .line 2090
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)"

    .line 2091
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)"

    .line 2092
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX events_backend_id on events(context_id)"

    .line 2093
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)"

    .line 2094
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
