.class public abstract Lo/setStatementDate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setStatementDate$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;

.field private static onMessageChannelReady:Lo/setStatementDate; = null

.field private static onPostMessage:I = 0x81


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setStatementDate;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Lo/setStatementDate;
    .locals 2

    .line 3
    sget-object v0, Lo/setStatementDate;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/setStatementDate;->onMessageChannelReady:Lo/setStatementDate;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lo/ReferredPersonData;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lo/ReferredPersonData;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo/setStatementDate;->onMessageChannelReady:Lo/setStatementDate;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Lo/setStatementDate;->onMessageChannelReady:Lo/setStatementDate;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static onPostMessage()I
    .locals 1

    .line 2
    sget v0, Lo/setStatementDate;->onPostMessage:I

    return v0
.end method


# virtual methods
.method protected abstract extraCallback(Lo/setStatementDate$onPostMessage;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1

    .line 18
    new-instance v0, Lo/setStatementDate$onPostMessage;

    invoke-direct {v0, p1, p2, p3, p6}, Lo/setStatementDate$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Lo/setStatementDate;->onPostMessage(Lo/setStatementDate$onPostMessage;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onPostMessage(Lo/setStatementDate$onPostMessage;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
