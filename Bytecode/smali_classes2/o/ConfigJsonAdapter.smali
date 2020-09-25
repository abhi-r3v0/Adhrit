.class public abstract Lo/ConfigJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady()Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
