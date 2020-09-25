.class final synthetic Lo/CredCurrencyResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;

.field private final onMessageChannelReady:Lo/ClickReference$$Parcelable;


# direct methods
.method constructor <init>(Lo/ClickReference$$Parcelable;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CredCurrencyResponseJsonAdapter;->onMessageChannelReady:Lo/ClickReference$$Parcelable;

    iput-object p2, p0, Lo/CredCurrencyResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/CredCurrencyResponseJsonAdapter;->onMessageChannelReady:Lo/ClickReference$$Parcelable;

    iget-object v1, p0, Lo/CredCurrencyResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lo/ClickReference$$Parcelable;->onMessageChannelReady(Ljava/util/Map;)V

    return-void
.end method
