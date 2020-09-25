.class public interface abstract Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomTabsCallback"
.end annotation


# virtual methods
.method public abstract getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleOnlineStateChange(Lo/setGeneratorType;)V
.end method

.method public abstract handleRejectedListen(ILo/emptyMap;)V
.end method

.method public abstract handleRejectedWrite(ILo/emptyMap;)V
.end method

.method public abstract handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V
.end method

.method public abstract handleSuccessfulWrite(Lo/CrashlyticsReport$Architecture;)V
.end method
