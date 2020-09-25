.class public interface abstract Lo/setActions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setActions$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

.field public static final extraCallback:Lo/setActions$ICustomTabsCallback$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setActions$ICustomTabsCallback$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/setActions;->ICustomTabsCallback:Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    .line 52
    new-instance v0, Lo/setActions$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {v0, v1}, Lo/setActions$ICustomTabsCallback$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/setActions;->extraCallback:Lo/setActions$ICustomTabsCallback$onNavigationEvent;

    return-void
.end method
