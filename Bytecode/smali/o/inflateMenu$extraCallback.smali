.class public final Lo/inflateMenu$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CampaignDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflateMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/logout/LogOutCommand$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ensureMenuView$ICustomTabsCallback;

.field private final onMessageChannelReady:Lo/CampaignDatabase_Impl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/CampaignDatabase_Impl;Lo/ensureMenuView$ICustomTabsCallback;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Lo/inflateMenu$extraCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 1024
    iput-object p2, p0, Lo/inflateMenu$extraCallback;->ICustomTabsCallback:Lo/ensureMenuView$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 1033
    iget-object p1, p0, Lo/inflateMenu$extraCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 1189
    iput p2, p1, Lo/CampaignDatabase_Impl;->extraCommand:I

    .line 1034
    iget-object p1, p0, Lo/inflateMenu$extraCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    .line 1193
    iput-object p4, p1, Lo/CampaignDatabase_Impl;->postMessage:Ljava/lang/String;

    .line 1035
    iget-object p1, p0, Lo/inflateMenu$extraCallback;->ICustomTabsCallback:Lo/ensureMenuView$ICustomTabsCallback;

    iget-object p2, p0, Lo/inflateMenu$extraCallback;->onMessageChannelReady:Lo/CampaignDatabase_Impl;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lo/ensureMenuView$ICustomTabsCallback;->onMessageChannelReady(Lo/CampaignDatabase_Impl;I)V

    return-void
.end method
