.class public final Lo/setAdSize$onTransact$onMessageChannelReady;
.super Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "Lo/setAdSize$onTransact;",
        "Lo/setAdSize$onTransact$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/setAdSize$onTransact;->onNavigationEvent()Lo/setAdSize$onTransact;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EGLSurfaceTexture$GlException;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/setAdSize$onTransact$onMessageChannelReady;-><init>()V

    return-void
.end method
