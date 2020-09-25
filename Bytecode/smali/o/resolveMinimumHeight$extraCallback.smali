.class public final Lo/resolveMinimumHeight$extraCallback;
.super Lo/ActivityChooserView$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/resolveMinimumHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lo/ActivityChooserView$onMessageChannelReady;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lo/resolveMinimumHeight$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Lo/ActivityChooserView;
    .locals 2

    .line 1102
    new-instance v0, Lo/resolveMinimumHeight;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/resolveMinimumHeight;-><init>(Lo/resolveMinimumHeight$extraCallback;B)V

    return-object v0
.end method
