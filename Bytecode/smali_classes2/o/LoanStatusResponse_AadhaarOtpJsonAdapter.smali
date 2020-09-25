.class public interface abstract Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract extraCallback()Lo/TotalPayable;
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent(Lo/LoanSummaryJsonAdapter;Lo/LoanSummaryJsonAdapter;)Lo/LoanSummaryJsonAdapter;
.end method

.method public abstract onNavigationEvent()Lo/getStatus_message;
.end method

.method public abstract onPostMessage(Lo/LoanSummaryData;Lo/LoanSummary$Details;)Lo/LoanSummaryData;
.end method

.method public abstract onPostMessage()Z
.end method
