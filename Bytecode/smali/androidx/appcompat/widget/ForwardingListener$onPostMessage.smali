.class final Landroidx/appcompat/widget/ForwardingListener$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/appcompat/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ForwardingListener;)V
    .locals 0

    .line 329
    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 334
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ForwardingListener;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ForwardingListener;->onLongPress()V

    return-void
.end method
