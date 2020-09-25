.class final Lo/getCountry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/clone;


# direct methods
.method constructor <init>(Lo/clone;)V
    .locals 0

    iput-object p1, p0, Lo/getCountry;->ICustomTabsCallback:Lo/clone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getCountry;->ICustomTabsCallback:Lo/clone;

    iget-object v0, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    invoke-virtual {v0}, Lo/GameCta;->extraCallback()Lo/getRefreshRate;

    move-result-object v0

    iget-object v1, p0, Lo/getCountry;->ICustomTabsCallback:Lo/clone;

    iget-object v1, v1, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-interface {v0, v1}, Lo/getRefreshRate;->onPostMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
