.class public final Lo/newPercentageRating;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newPercentageRating$onTransact;,
        Lo/newPercentageRating$ICustomTabsCallback;,
        Lo/newPercentageRating$onMessageChannelReady;,
        Lo/newPercentageRating$onNavigationEvent;,
        Lo/newPercentageRating$extraCallback;,
        Lo/newPercentageRating$onPostMessage;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getRatingStyle;

.field public static final extraCallback:Lo/getRatingStyle;

.field public static final onMessageChannelReady:Lo/getRatingStyle;

.field public static final onNavigationEvent:Lo/getRatingStyle;

.field public static final onPostMessage:Lo/getRatingStyle;

.field public static final onTransact:Lo/getRatingStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lo/newPercentageRating$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/newPercentageRating$extraCallback;-><init>(Lo/newPercentageRating$onNavigationEvent;Z)V

    sput-object v0, Lo/newPercentageRating;->onNavigationEvent:Lo/getRatingStyle;

    .line 39
    new-instance v0, Lo/newPercentageRating$extraCallback;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lo/newPercentageRating$extraCallback;-><init>(Lo/newPercentageRating$onNavigationEvent;Z)V

    sput-object v0, Lo/newPercentageRating;->onMessageChannelReady:Lo/getRatingStyle;

    .line 47
    new-instance v0, Lo/newPercentageRating$extraCallback;

    sget-object v1, Lo/newPercentageRating$onMessageChannelReady;->onNavigationEvent:Lo/newPercentageRating$onMessageChannelReady;

    invoke-direct {v0, v1, v2}, Lo/newPercentageRating$extraCallback;-><init>(Lo/newPercentageRating$onNavigationEvent;Z)V

    sput-object v0, Lo/newPercentageRating;->extraCallback:Lo/getRatingStyle;

    .line 55
    new-instance v0, Lo/newPercentageRating$extraCallback;

    sget-object v1, Lo/newPercentageRating$onMessageChannelReady;->onNavigationEvent:Lo/newPercentageRating$onMessageChannelReady;

    invoke-direct {v0, v1, v3}, Lo/newPercentageRating$extraCallback;-><init>(Lo/newPercentageRating$onNavigationEvent;Z)V

    sput-object v0, Lo/newPercentageRating;->ICustomTabsCallback:Lo/getRatingStyle;

    .line 62
    new-instance v0, Lo/newPercentageRating$extraCallback;

    sget-object v1, Lo/newPercentageRating$ICustomTabsCallback;->ICustomTabsCallback:Lo/newPercentageRating$ICustomTabsCallback;

    invoke-direct {v0, v1, v2}, Lo/newPercentageRating$extraCallback;-><init>(Lo/newPercentageRating$onNavigationEvent;Z)V

    sput-object v0, Lo/newPercentageRating;->onPostMessage:Lo/getRatingStyle;

    .line 68
    sget-object v0, Lo/newPercentageRating$onTransact;->onMessageChannelReady:Lo/newPercentageRating$onTransact;

    sput-object v0, Lo/newPercentageRating;->onTransact:Lo/getRatingStyle;

    return-void
.end method

.method static ICustomTabsCallback(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static extraCallback(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
