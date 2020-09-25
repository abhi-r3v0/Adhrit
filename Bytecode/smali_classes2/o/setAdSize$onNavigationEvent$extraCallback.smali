.class public final Lo/setAdSize$onNavigationEvent$extraCallback;
.super Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "Lo/setAdSize$onNavigationEvent;",
        "Lo/setAdSize$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/setAdSize$onNavigationEvent;->onPostMessage()Lo/setAdSize$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EGLSurfaceTexture$GlException;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/setAdSize$onNavigationEvent$extraCallback;-><init>()V

    return-void
.end method
