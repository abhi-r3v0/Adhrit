.class public final Lo/setDisplayOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDisplayOptions$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setAnimationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setAnimationStyle<",
            "Lo/AppCompatImageHelper;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setDisplayOptions$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lo/setAnimationStyle;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lo/setAnimationStyle;-><init>(J)V

    iput-object v0, p0, Lo/setDisplayOptions;->extraCallback:Lo/setAnimationStyle;

    .line 23
    new-instance v0, Lo/setDisplayOptions$3;

    invoke-direct {v0}, Lo/setDisplayOptions$3;-><init>()V

    const/16 v1, 0xa

    .line 24
    invoke-static {v1, v0}, Lo/setVerticalOffset;->onNavigationEvent(ILo/setVerticalOffset$extraCallback;)Lo/RatingCompat$StarStyle$extraCallback;

    move-result-object v0

    iput-object v0, p0, Lo/setDisplayOptions;->onPostMessage:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method private onPostMessage(Lo/AppCompatImageHelper;)Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lo/setDisplayOptions;->onPostMessage:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/setDisplayOptions$ICustomTabsCallback;

    .line 54
    :try_start_0
    iget-object v1, v0, Lo/setDisplayOptions$ICustomTabsCallback;->onMessageChannelReady:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 56
    iget-object p1, v0, Lo/setDisplayOptions$ICustomTabsCallback;->onMessageChannelReady:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lo/getHorizontalOffset;->onPostMessage([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v1, p0, Lo/setDisplayOptions;->onPostMessage:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lo/setDisplayOptions;->onPostMessage:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    throw p1

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/AppCompatImageHelper;)Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lo/setDisplayOptions;->extraCallback:Lo/setAnimationStyle;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lo/setDisplayOptions;->extraCallback:Lo/setAnimationStyle;

    invoke-virtual {v1, p1}, Lo/setAnimationStyle;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lo/setDisplayOptions;->onPostMessage(Lo/AppCompatImageHelper;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Lo/setDisplayOptions;->extraCallback:Lo/setAnimationStyle;

    monitor-enter v0

    .line 46
    :try_start_1
    iget-object v2, p0, Lo/setDisplayOptions;->extraCallback:Lo/setAnimationStyle;

    invoke-virtual {v2, p1, v1}, Lo/setAnimationStyle;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 41
    monitor-exit v0

    throw p1
.end method
