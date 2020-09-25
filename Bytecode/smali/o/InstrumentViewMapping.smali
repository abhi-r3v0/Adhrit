.class public abstract Lo/InstrumentViewMapping;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstrumentViewMapping$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

.field private onPostMessage:Lo/InstrumentViewMapping$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/PaymentInstrumentRequestJsonAdapter;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/InstrumentViewMapping;->extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentInstrumentRequestJsonAdapter;

    return-object v0
.end method

.method public abstract extraCallback([Lo/MandatoryFields;Lo/JuspaySessionToken;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;)Lo/OfferJsonAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)V
.end method

.method public final onPostMessage(Lo/InstrumentViewMapping$ICustomTabsCallback;Lo/PaymentInstrumentRequestJsonAdapter;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/InstrumentViewMapping;->onPostMessage:Lo/InstrumentViewMapping$ICustomTabsCallback;

    .line 113
    iput-object p2, p0, Lo/InstrumentViewMapping;->extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

    return-void
.end method
