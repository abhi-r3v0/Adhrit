.class final synthetic Lo/setCropWindowLimits;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/SuggestedAmount;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onPostMessage:Lo/CarrierFingerPrint;


# direct methods
.method constructor <init>(Lo/CarrierFingerPrint;Lo/SuggestedAmount;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCropWindowLimits;->onPostMessage:Lo/CarrierFingerPrint;

    iput-object p2, p0, Lo/setCropWindowLimits;->extraCallback:Lo/SuggestedAmount;

    iput-object p3, p0, Lo/setCropWindowLimits;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/setCropWindowLimits;->onPostMessage:Lo/CarrierFingerPrint;

    iget-object v1, p0, Lo/setCropWindowLimits;->extraCallback:Lo/SuggestedAmount;

    iget-object v2, p0, Lo/setCropWindowLimits;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/CarrierFingerPrint;->onPostMessage(Lo/SuggestedAmount;Ljava/lang/String;)V

    return-void
.end method
