.class public final Lo/getListPopupWindow$ICustomTabsCallback;
.super Lo/ActivityChooserView$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lo/ActivityChooserView$onMessageChannelReady;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/getListPopupWindow$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Lo/ActivityChooserView;
    .locals 2

    .line 1094
    new-instance v0, Lo/getListPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getListPopupWindow;-><init>(Lo/getListPopupWindow$ICustomTabsCallback;B)V

    return-object v0
.end method
