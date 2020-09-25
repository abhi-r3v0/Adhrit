.class public final Lo/setSupportBackgroundTintList$onNavigationEvent;
.super Lo/ActivityChooserView$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSupportBackgroundTintList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
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
    invoke-direct {p0}, Lo/setSupportBackgroundTintList$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Lo/ActivityChooserView;
    .locals 2

    .line 1102
    new-instance v0, Lo/setSupportBackgroundTintList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/setSupportBackgroundTintList;-><init>(Lo/setSupportBackgroundTintList$onNavigationEvent;B)V

    return-object v0
.end method
