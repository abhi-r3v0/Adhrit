.class final Lo/fromJson;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/Account$extraCallback;

.field private final onMessageChannelReady:Lo/Account;

.field private final onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;


# direct methods
.method public constructor <init>(Lo/Account$extraCallback;Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fromJson;->extraCallback:Lo/Account$extraCallback;

    iput-object p2, p0, Lo/fromJson;->onMessageChannelReady:Lo/Account;

    iput-object p3, p0, Lo/fromJson;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/fromJson;->extraCallback:Lo/Account$extraCallback;

    iget-object v1, p0, Lo/fromJson;->onMessageChannelReady:Lo/Account;

    iget-object v2, p0, Lo/fromJson;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lo/Account$extraCallback;->extraCallback(Lo/Account;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-void
.end method
