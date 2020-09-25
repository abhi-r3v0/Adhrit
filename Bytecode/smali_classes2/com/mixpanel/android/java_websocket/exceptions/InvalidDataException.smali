.class public Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public ICustomTabsCallback:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput p1, p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput p1, p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;->ICustomTabsCallback:I

    return-void
.end method
