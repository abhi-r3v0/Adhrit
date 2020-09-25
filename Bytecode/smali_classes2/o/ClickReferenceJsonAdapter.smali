.class final Lo/ClickReferenceJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/CredCurrencyResponse;


# direct methods
.method constructor <init>(Lo/CredCurrencyResponse;)V
    .locals 0

    iput-object p1, p0, Lo/ClickReferenceJsonAdapter;->extraCallback:Lo/CredCurrencyResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/ClickReferenceJsonAdapter;->extraCallback:Lo/CredCurrencyResponse;

    invoke-static {v0}, Lo/CredCurrencyResponse;->onMessageChannelReady(Lo/CredCurrencyResponse;)V

    return-void
.end method
