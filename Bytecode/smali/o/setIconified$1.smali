.class final Lo/setIconified$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setIconified$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setIconified;->onNavigationEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onNavigationEvent:Lo/setIconified;


# direct methods
.method constructor <init>(Lo/setIconified;I)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/setIconified$1;->onNavigationEvent:Lo/setIconified;

    iput p2, p0, Lo/setIconified$1;->ICustomTabsCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2

    .line 195
    iget-object v0, p0, Lo/setIconified$1;->onNavigationEvent:Lo/setIconified;

    iget v1, v0, Lo/setIconified;->onMessageChannelReady:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/setIconified;->onMessageChannelReady:I

    .line 196
    iget-object v0, p0, Lo/setIconified$1;->onNavigationEvent:Lo/setIconified;

    iget v0, v0, Lo/setIconified;->onMessageChannelReady:I

    iget v1, p0, Lo/setIconified$1;->ICustomTabsCallback:I

    if-lt v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lo/setIconified$1;->onNavigationEvent:Lo/setIconified;

    sget-object v1, Lo/isIconfiedByDefault;->onMessageChannelReady:Lo/isIconfiedByDefault;

    iput-object v1, v0, Lo/setIconified;->onNavigationEvent:Lo/isIconfiedByDefault;

    .line 198
    iget-object v0, p0, Lo/setIconified$1;->onNavigationEvent:Lo/setIconified;

    invoke-virtual {v0}, Lo/setIconified;->onPostMessage()V

    :cond_0
    return-void
.end method
