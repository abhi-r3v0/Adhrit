.class public final Lo/hasWindowFocus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasWindowFocus$ICustomTabsCallback;,
        Lo/hasWindowFocus$extraCallback;,
        Lo/hasWindowFocus$onNavigationEvent;,
        Lo/hasWindowFocus$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/setNavigationContentDescription;Lo/setNavigationContentDescription;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/hasWindowFocus;->onMessageChannelReady:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lo/hasWindowFocus;->onNavigationEvent:Lo/setNavigationContentDescription;

    .line 75
    iput-object p3, p0, Lo/hasWindowFocus;->extraCallback:Lo/setNavigationContentDescription;

    .line 76
    iput-object p4, p0, Lo/hasWindowFocus;->onPostMessage:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 11

    .line 59
    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 2082
    new-instance p1, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance v9, Lo/setSoftInputMode;

    invoke-direct {v9, v4}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lo/hasWindowFocus$onMessageChannelReady;

    iget-object v1, p0, Lo/hasWindowFocus;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/hasWindowFocus;->onNavigationEvent:Lo/setNavigationContentDescription;

    iget-object v3, p0, Lo/hasWindowFocus;->extraCallback:Lo/setNavigationContentDescription;

    iget-object v8, p0, Lo/hasWindowFocus;->onPostMessage:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lo/hasWindowFocus$onMessageChannelReady;-><init>(Landroid/content/Context;Lo/setNavigationContentDescription;Lo/setNavigationContentDescription;Landroid/net/Uri;IILo/applyFrameworkTintUsingColorFilter;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 2

    .line 59
    check-cast p1, Landroid/net/Uri;

    .line 1090
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
