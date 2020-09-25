.class public interface abstract Lo/LoanSummary$Details;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LoanSummary$ScheduleCharge;


# virtual methods
.method public abstract ICustomTabsCallback$Stub$Proxy()[B
.end method

.method public abstract extraCallback(Lcom/google/android/gms/internal/ads/zzbav;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCommand()Lo/LoanSummaryData;
.end method

.method public abstract getInterfaceDescriptor()Lo/LoanStatusResponse$Input;
.end method

.method public abstract requestPostMessageChannel()Lo/LoanSummaryData;
.end method

.method public abstract warmup()I
.end method
