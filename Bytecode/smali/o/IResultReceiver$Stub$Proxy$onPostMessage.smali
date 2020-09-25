.class final Lo/IResultReceiver$Stub$Proxy$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IResultReceiver$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Intent;

.field private final extraCallback:Lo/IResultReceiver$Stub$Proxy;

.field private final onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->extraCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 351
    iput-object p2, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->ICustomTabsCallback:Landroid/content/Intent;

    .line 352
    iput p3, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 357
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->extraCallback:Lo/IResultReceiver$Stub$Proxy;

    iget-object v1, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->ICustomTabsCallback:Landroid/content/Intent;

    iget v2, p0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {v0, v1, v2}, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady(Landroid/content/Intent;I)Z

    return-void
.end method
