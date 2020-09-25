.class public final Lo/onRequestPermissionsResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/fresco/CustomScaleType;",
        "",
        "()V",
        "FIT_HEIGHT",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getFIT_HEIGHT",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "FIT_HEIGHT_GRAVITY_END",
        "getFIT_HEIGHT_GRAVITY_END",
        "FIT_HEIGHT_GRAVITY_START",
        "getFIT_HEIGHT_GRAVITY_START",
        "FIT_INSIDE_GRAVITY_END",
        "getFIT_INSIDE_GRAVITY_END",
        "FIT_WIDTH",
        "getFIT_WIDTH",
        "FIT_WIDTH_ADJUST_TOP",
        "getFIT_WIDTH_ADJUST_TOP",
        "FIT_WIDTH_GRAVITY_END",
        "getFIT_WIDTH_GRAVITY_END",
        "FIT_WIDTH_GRAVITY_START",
        "getFIT_WIDTH_GRAVITY_START",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/setFailureListener$extraCallback;

.field private static final ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

.field private static final asBinder:Lo/setFailureListener$extraCallback;

.field private static final asInterface:Lo/setFailureListener$extraCallback;

.field private static final extraCallback:Lo/setFailureListener$extraCallback;

.field public static final onMessageChannelReady:Lo/onRequestPermissionsResult;

.field private static final onNavigationEvent:Lo/setFailureListener$extraCallback;

.field private static final onPostMessage:Lo/setFailureListener$extraCallback;

.field private static final onTransact:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/onRequestPermissionsResult;

    invoke-direct {v0}, Lo/onRequestPermissionsResult;-><init>()V

    sput-object v0, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    .line 7
    sget-object v0, Lo/onRequestPermissionsResult$onNavigationEvent;->onNavigationEvent:Lo/onRequestPermissionsResult$onNavigationEvent;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 21
    sget-object v0, Lo/onRequestPermissionsResult$ICustomTabsCallback;->extraCallback:Lo/onRequestPermissionsResult$ICustomTabsCallback;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->onNavigationEvent:Lo/setFailureListener$extraCallback;

    .line 35
    sget-object v0, Lo/onRequestPermissionsResult$extraCallback;->onMessageChannelReady:Lo/onRequestPermissionsResult$extraCallback;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->ICustomTabsCallback:Lo/setFailureListener$extraCallback;

    .line 49
    sget-object v0, Lo/onRequestPermissionsResult$onTransact;->onPostMessage:Lo/onRequestPermissionsResult$onTransact;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->extraCallback:Lo/setFailureListener$extraCallback;

    .line 63
    sget-object v0, Lo/onRequestPermissionsResult$asBinder;->onPostMessage:Lo/onRequestPermissionsResult$asBinder;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->asInterface:Lo/setFailureListener$extraCallback;

    .line 77
    sget-object v0, Lo/onRequestPermissionsResult$onPostMessage;->ICustomTabsCallback:Lo/onRequestPermissionsResult$onPostMessage;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->asBinder:Lo/setFailureListener$extraCallback;

    .line 92
    sget-object v0, Lo/onRequestPermissionsResult$onMessageChannelReady;->ICustomTabsCallback:Lo/onRequestPermissionsResult$onMessageChannelReady;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

    .line 123
    sget-object v0, Lo/onRequestPermissionsResult$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/onRequestPermissionsResult$ICustomTabsCallback$Stub;

    check-cast v0, Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/onRequestPermissionsResult;->onTransact:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 49
    sget-object v0, Lo/onRequestPermissionsResult;->extraCallback:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static ICustomTabsCallback$Stub()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 92
    sget-object v0, Lo/onRequestPermissionsResult;->ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static asInterface()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 77
    sget-object v0, Lo/onRequestPermissionsResult;->asBinder:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static extraCallback()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 21
    sget-object v0, Lo/onRequestPermissionsResult;->onNavigationEvent:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 63
    sget-object v0, Lo/onRequestPermissionsResult;->asInterface:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 35
    sget-object v0, Lo/onRequestPermissionsResult;->ICustomTabsCallback:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static onPostMessage()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 7
    sget-object v0, Lo/onRequestPermissionsResult;->onPostMessage:Lo/setFailureListener$extraCallback;

    return-object v0
.end method

.method public static onRelationshipValidationResult()Lo/setFailureListener$extraCallback;
    .locals 1

    .line 123
    sget-object v0, Lo/onRequestPermissionsResult;->onTransact:Lo/setFailureListener$extraCallback;

    return-object v0
.end method
