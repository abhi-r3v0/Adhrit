.class public Lo/IPostMessageService$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/sendSessionDestroyed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IPostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final abc_vector_test:I = 0x7f08010a

.field public static final notification_action_background:I = 0x7f080475

.field public static final notification_bg:I = 0x7f080476

.field public static final notification_bg_low:I = 0x7f080477

.field public static final notification_bg_low_normal:I = 0x7f080478

.field public static final notification_bg_low_pressed:I = 0x7f080479

.field public static final notification_bg_normal:I = 0x7f08047a

.field public static final notification_bg_normal_pressed:I = 0x7f08047b

.field public static final notification_icon_background:I = 0x7f08047d

.field public static final notification_template_icon_bg:I = 0x7f08047e

.field public static final notification_template_icon_low_bg:I = 0x7f08047f

.field public static final notification_tile_bg:I = 0x7f080480

.field public static final notify_panel_notification_icon_bg:I = 0x7f080482

.field public static final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 3000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "An unknown error occurred."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The API is not available on this device."

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "The request that was sent by the app is malformed."

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v4, -0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The install is unavailable to this user or device."

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v5, -0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "The download/install is not allowed, due to the current device state (e.g. low battery, low disk space, ...)."

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v6, -0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The install/update has not been (fully) downloaded yet."

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/4 v7, -0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The install is already in progress and there is no UI flow to resume."

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/16 v8, -0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "The Play Store app is either not installed or not the official version."

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/16 v9, -0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onPostMessage:Ljava/util/Map;

    const/16 v10, -0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "An internal error happened in the Play Store."

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v11, "ERROR_UNKNOWN"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_API_NOT_AVAILABLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_INVALID_REQUEST"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_INSTALL_UNAVAILABLE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_INSTALL_NOT_ALLOWED"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_DOWNLOAD_NOT_PRESENT"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_INSTALL_IN_PROGRESS"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_INTERNAL_ERROR"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_PLAY_STORE_NOT_FOUND"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/IPostMessageService$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "ERROR_APP_NOT_OWNED"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput-object p1, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1065
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    return-void
.end method

.method public final extraCallback(I[B)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public final onNavigationEvent(ID)V
    .locals 1

    .line 1045
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;)V
    .locals 1

    .line 1050
    iget-object v0, p0, Lo/IPostMessageService$onNavigationEvent;->onNavigationEvent:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method
