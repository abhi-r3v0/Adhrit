.class final Lo/setAllowStacking$onNavigationEvent;
.super Lo/ContentFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAllowStacking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ContentFrameLayout<",
        "Lo/setAllowStacking$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/ContentFrameLayout;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady()Lo/getMinWidthMinor;
    .locals 1

    .line 1075
    new-instance v0, Lo/setAllowStacking$extraCallback;

    invoke-direct {v0, p0}, Lo/setAllowStacking$extraCallback;-><init>(Lo/setAllowStacking$onNavigationEvent;)V

    return-object v0
.end method
