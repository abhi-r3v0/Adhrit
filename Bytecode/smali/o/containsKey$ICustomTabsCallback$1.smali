.class Lo/containsKey$ICustomTabsCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/containsKey$ICustomTabsCallback;

.field final synthetic onPostMessage:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lo/containsKey$ICustomTabsCallback;Landroid/graphics/Typeface;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lo/containsKey$ICustomTabsCallback$1;->onMessageChannelReady:Lo/containsKey$ICustomTabsCallback;

    iput-object p2, p0, Lo/containsKey$ICustomTabsCallback$1;->onPostMessage:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 284
    iget-object v0, p0, Lo/containsKey$ICustomTabsCallback$1;->onMessageChannelReady:Lo/containsKey$ICustomTabsCallback;

    iget-object v1, p0, Lo/containsKey$ICustomTabsCallback$1;->onPostMessage:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lo/containsKey$ICustomTabsCallback;->extraCallback(Landroid/graphics/Typeface;)V

    return-void
.end method
