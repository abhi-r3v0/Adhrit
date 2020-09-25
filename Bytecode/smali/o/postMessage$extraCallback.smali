.class Lo/postMessage$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/postMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Landroid/content/res/ColorStateList;

.field final onMessageChannelReady:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lo/postMessage$extraCallback;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 188
    iput-object p2, p0, Lo/postMessage$extraCallback;->onMessageChannelReady:Landroid/content/res/Configuration;

    return-void
.end method
