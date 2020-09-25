.class abstract Lo/hasWindowFocus$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasWindowFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lo/hasWindowFocus$ICustomTabsCallback;->extraCallback:Landroid/content/Context;

    .line 250
    iput-object p2, p0, Lo/hasWindowFocus$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lo/hasWindowFocus;

    iget-object v1, p0, Lo/hasWindowFocus$ICustomTabsCallback;->extraCallback:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lo/hasWindowFocus$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    .line 258
    invoke-virtual {p1, v2, v3}, Lo/getVisibility;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;)Lo/setNavigationContentDescription;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Lo/hasWindowFocus$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    .line 259
    invoke-virtual {p1, v3, v4}, Lo/getVisibility;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;)Lo/setNavigationContentDescription;

    move-result-object p1

    iget-object v3, p0, Lo/hasWindowFocus$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lo/hasWindowFocus;-><init>(Landroid/content/Context;Lo/setNavigationContentDescription;Lo/setNavigationContentDescription;Ljava/lang/Class;)V

    return-object v0
.end method
