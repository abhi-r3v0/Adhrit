.class abstract Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Pitch;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Pitch;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;TUB;",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpcomingEmiData;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)V
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/LoanStatusResponse$Input;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LoanStatusResponse$Input;",
            "Ljava/lang/Object;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanSummary$Details;I)Ljava/lang/Object;
.end method

.method abstract onPostMessage(Lo/LoanSummary$Details;)Z
.end method
