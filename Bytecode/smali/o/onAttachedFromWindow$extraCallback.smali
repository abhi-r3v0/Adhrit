.class final Lo/onAttachedFromWindow$extraCallback;
.super Lo/ContentFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAttachedFromWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ContentFrameLayout<",
        "Lo/onAttachedFromWindow$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lo/ContentFrameLayout;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady()Lo/getMinWidthMinor;
    .locals 1

    .line 1192
    new-instance v0, Lo/onAttachedFromWindow$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onAttachedFromWindow$ICustomTabsCallback;-><init>(Lo/onAttachedFromWindow$extraCallback;)V

    return-object v0
.end method
