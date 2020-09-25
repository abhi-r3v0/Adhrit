.class public final Lo/onEnteredHiddenState$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onEnteredHiddenState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final abc_action_bar_home_description:I = 0x7f130007

.field public static final abc_action_bar_up_description:I = 0x7f130008

.field public static final abc_action_menu_overflow_description:I = 0x7f130009

.field public static final abc_action_mode_done:I = 0x7f13000a

.field public static final abc_activity_chooser_view_see_all:I = 0x7f13000b

.field public static final abc_activitychooserview_choose_application:I = 0x7f13000c

.field public static final abc_capital_off:I = 0x7f13000d

.field public static final abc_capital_on:I = 0x7f13000e

.field public static final abc_menu_alt_shortcut_label:I = 0x7f13000f

.field public static final abc_menu_ctrl_shortcut_label:I = 0x7f130010

.field public static final abc_menu_delete_shortcut_label:I = 0x7f130011

.field public static final abc_menu_enter_shortcut_label:I = 0x7f130012

.field public static final abc_menu_function_shortcut_label:I = 0x7f130013

.field public static final abc_menu_meta_shortcut_label:I = 0x7f130014

.field public static final abc_menu_shift_shortcut_label:I = 0x7f130015

.field public static final abc_menu_space_shortcut_label:I = 0x7f130016

.field public static final abc_menu_sym_shortcut_label:I = 0x7f130017

.field public static final abc_prepend_shortcut_label:I = 0x7f130018

.field public static final abc_search_hint:I = 0x7f130019

.field public static final abc_searchview_description_clear:I = 0x7f13001a

.field public static final abc_searchview_description_query:I = 0x7f13001b

.field public static final abc_searchview_description_search:I = 0x7f13001c

.field public static final abc_searchview_description_submit:I = 0x7f13001d

.field public static final abc_searchview_description_voice:I = 0x7f13001e

.field public static final abc_shareactionprovider_share_with:I = 0x7f13001f

.field public static final abc_shareactionprovider_share_with_application:I = 0x7f130020

.field public static final abc_toolbar_collapse_description:I = 0x7f130021

.field public static final extraCallback:Lo/onEnteredHiddenState$onNavigationEvent;

.field public static final later:I = 0x7f1302ab

.field public static final play_service_not_found:I = 0x7f130389

.field public static final search_menu_title:I = 0x7f1303e1

.field public static final status_bar_notification_info_overflow:I = 0x7f130451

.field public static final two_string_append:I = 0x7f130499

.field public static final valid_digits:I = 0x7f1304d1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/onEnteredHiddenState$onNavigationEvent;

    invoke-direct {v0}, Lo/onEnteredHiddenState$onNavigationEvent;-><init>()V

    sput-object v0, Lo/onEnteredHiddenState$onNavigationEvent;->extraCallback:Lo/onEnteredHiddenState$onNavigationEvent;

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

    const-string v0, "ALTER TABLE transport_contexts ADD COLUMN extras BLOB"

    .line 2099
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)"

    .line 2100
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX contexts_backend_priority"

    .line 2102
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
