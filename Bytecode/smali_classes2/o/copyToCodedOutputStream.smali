.class final Lo/copyToCodedOutputStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isHandlingException;


# instance fields
.field private final synthetic zza:Lo/flushOrLog;


# direct methods
.method constructor <init>(Lo/synthesizeSessionFile;Lo/flushOrLog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/copyToCodedOutputStream;->zza:Lo/flushOrLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lo/copyStream$extraCallback;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lo/copyToCodedOutputStream;->zza:Lo/flushOrLog;

    invoke-virtual {p1, p2}, Lo/copyStream$extraCallback;->onVerificationCompleted(Lo/flushOrLog;)V

    return-void
.end method
