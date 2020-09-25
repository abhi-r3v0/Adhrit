.class final synthetic Lo/ImageJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# instance fields
.field private final onPostMessage:Lo/CtasJsonAdapter;


# direct methods
.method constructor <init>(Lo/CtasJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ImageJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/ImageJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lo/CtasJsonAdapter;->ICustomTabsCallback(Ljava/util/Map;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
