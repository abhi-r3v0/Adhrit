.class final Lo/OfferResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onPostMessage:Lo/Offer;


# direct methods
.method public constructor <init>(Lo/Offer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OfferResponse;->onPostMessage:Lo/Offer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/OfferResponse;->onPostMessage:Lo/Offer;

    .line 1000
    invoke-virtual {v0}, Lo/Offer;->onNavigationEvent()V

    return-void
.end method
