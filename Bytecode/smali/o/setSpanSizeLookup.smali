.class public final Lo/setSpanSizeLookup;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR.\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010j\n\u0012\u0004\u0012\u00020\u0011\u0018\u0001`\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u000eR \u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/LendingAutoDebitViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "autoDebitData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
        "getAutoDebitData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
        "setAutoDebitData",
        "(Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;)V",
        "bankName",
        "",
        "getBankName",
        "()Ljava/lang/String;",
        "setBankName",
        "(Ljava/lang/String;)V",
        "confirmationList",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;",
        "Lkotlin/collections/ArrayList;",
        "getConfirmationList",
        "()Ljava/util/ArrayList;",
        "setConfirmationList",
        "(Ljava/util/ArrayList;)V",
        "disclaimer",
        "getDisclaimer",
        "setDisclaimer",
        "listOfDates",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;",
        "getListOfDates",
        "()Ljava/util/List;",
        "setListOfDates",
        "(Ljava/util/List;)V",
        "selectedDate",
        "",
        "getSelectedDate",
        "()I",
        "setSelectedDate",
        "(I)V",
        "sliderScreenText",
        "Lcom/dreamplug/fabrik/ui/lending/model/Custom;",
        "getSliderScreenText",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Custom;",
        "setSliderScreenText",
        "(Lcom/dreamplug/fabrik/ui/lending/model/Custom;)V",
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
.field ICustomTabsCallback:Ljava/lang/String;

.field extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Custom;

.field onPostMessage:I

.field onTransact:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lo/setSpanSizeLookup;->onPostMessage:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/setSpanSizeLookup;->extraCallback:Ljava/util/List;

    return-void
.end method
