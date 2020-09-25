.class public final Lo/AudioAttributesImplApi21$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AudioAttributesImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankCategorySheetAdapter$Companion;",
        "",
        "()V",
        "COLLECTION_LIST_ITEM",
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
.field private final onPostMessage:Lo/ag;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ag;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AudioAttributesImplApi21$onPostMessage;->onPostMessage:Lo/ag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/AudioAttributesImplApi21$onPostMessage;->onPostMessage:Lo/ag;

    .line 2054
    iget-object v1, v0, Lo/ag;->extraCallback:Lo/b$e;

    .line 3000
    new-instance v2, Lo/MultiSelectListPreference$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/MultiSelectListPreference$onMessageChannelReady;-><init>(Lo/ag;)V

    .line 2054
    invoke-interface {v1, v2}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;

    return-void
.end method
