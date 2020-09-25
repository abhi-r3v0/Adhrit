.class Lo/getVolumeAttributes$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/getVolumeAttributes;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1004
    new-instance v0, Lo/getVolumeAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getVolumeAttributes;-><init>(Lo/getVolumeAttributes;)V

    invoke-direct {p0, v0}, Lo/getVolumeAttributes$ICustomTabsCallback;-><init>(Lo/getVolumeAttributes;)V

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;)V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Lo/getVolumeAttributes$ICustomTabsCallback;->extraCallback:Lo/getVolumeAttributes;

    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Lo/getLong;)V
    .locals 0

    return-void
.end method

.method onNavigationEvent(Lo/getLong;)V
    .locals 0

    return-void
.end method

.method onPostMessage()Lo/getVolumeAttributes;
    .locals 1

    .line 1025
    iget-object v0, p0, Lo/getVolumeAttributes$ICustomTabsCallback;->extraCallback:Lo/getVolumeAttributes;

    return-object v0
.end method
