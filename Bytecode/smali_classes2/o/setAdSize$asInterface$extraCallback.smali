.class public final Lo/setAdSize$asInterface$extraCallback;
.super Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "Lo/setAdSize$asInterface;",
        "Lo/setAdSize$asInterface$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/setAdSize$asInterface;->extraCallback()Lo/setAdSize$asInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EGLSurfaceTexture$GlException;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/setAdSize$asInterface$extraCallback;-><init>()V

    return-void
.end method
