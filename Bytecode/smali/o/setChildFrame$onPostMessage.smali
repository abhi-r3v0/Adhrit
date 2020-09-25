.class public final Lo/setChildFrame$onPostMessage;
.super Lo/ActivityChooserView$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setChildFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/ActivityChooserView$onMessageChannelReady;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lo/setChildFrame$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Lo/ActivityChooserView;
    .locals 2

    .line 1092
    new-instance v0, Lo/setChildFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/setChildFrame;-><init>(Lo/setChildFrame$onPostMessage;B)V

    return-object v0
.end method
