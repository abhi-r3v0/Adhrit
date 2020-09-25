.class final Lo/AccountTemplatePropertiesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/PinAccountRequestJsonAdapter;

.field private final synthetic extraCallback:Lo/PaymentModeListResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/PinAccountRequestJsonAdapter;Lo/PaymentModeListResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/AccountTemplatePropertiesJsonAdapter;->ICustomTabsCallback:Lo/PinAccountRequestJsonAdapter;

    iput-object p2, p0, Lo/AccountTemplatePropertiesJsonAdapter;->extraCallback:Lo/PaymentModeListResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/AccountTemplatePropertiesJsonAdapter;->ICustomTabsCallback:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v0}, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady(Lo/PinAccountRequestJsonAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PaymentModeListResponseJsonAdapter;

    iget-object v2, p0, Lo/AccountTemplatePropertiesJsonAdapter;->extraCallback:Lo/PaymentModeListResponseJsonAdapter;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lo/AccountTemplatePropertiesJsonAdapter;->ICustomTabsCallback:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v2}, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady(Lo/PinAccountRequestJsonAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bucketizer;

    invoke-virtual {v1}, Lo/Bucketizer;->onMessageChannelReady()V

    goto :goto_0

    :cond_1
    return-void
.end method
