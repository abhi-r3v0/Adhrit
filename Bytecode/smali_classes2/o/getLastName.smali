.class public final Lo/getLastName;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/setPaymentDueDateWeaklyTyped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPaymentDueDateWeaklyTyped<",
            "*>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/getContacts;


# direct methods
.method public constructor <init>(Lo/getContacts;ILo/setPaymentDueDateWeaklyTyped;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getContacts;",
            "I",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getLastName;->onNavigationEvent:Lo/getContacts;

    .line 3
    iput p2, p0, Lo/getLastName;->onMessageChannelReady:I

    .line 4
    iput-object p3, p0, Lo/getLastName;->ICustomTabsCallback:Lo/setPaymentDueDateWeaklyTyped;

    return-void
.end method
