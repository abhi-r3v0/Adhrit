.class final Lo/getMinWidthMajor$onMessageChannelReady;
.super Lo/ContentFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinWidthMajor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ContentFrameLayout<",
        "Lo/getMinWidthMajor$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lo/ContentFrameLayout;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady()Lo/getMinWidthMinor;
    .locals 1

    .line 1234
    new-instance v0, Lo/getMinWidthMajor$extraCallback;

    invoke-direct {v0, p0}, Lo/getMinWidthMajor$extraCallback;-><init>(Lo/getMinWidthMajor$onMessageChannelReady;)V

    return-object v0
.end method
