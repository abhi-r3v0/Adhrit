.class final Lo/writeSessionEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isHandlingException;


# instance fields
.field private final synthetic zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/synthesizeSessionFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/writeSessionEvent;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lo/copyStream$extraCallback;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lo/writeSessionEvent;->zza:Ljava/lang/String;

    invoke-static {}, Lo/copyStream$onMessageChannelReady;->zza()Lo/copyStream$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lo/copyStream$extraCallback;->onCodeSent(Ljava/lang/String;Lo/copyStream$onMessageChannelReady;)V

    return-void
.end method
