.class final Lo/OfferRequestJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/OfferSlab;


# direct methods
.method public constructor <init>(Lo/OfferSlab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OfferRequestJsonAdapter;->onMessageChannelReady:Lo/OfferSlab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/OfferRequestJsonAdapter;->onMessageChannelReady:Lo/OfferSlab;

    .line 1000
    invoke-virtual {v0}, Lo/OfferSlab;->extraCallback()V

    return-void
.end method
