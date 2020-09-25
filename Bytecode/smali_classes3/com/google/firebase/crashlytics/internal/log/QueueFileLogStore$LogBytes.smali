.class Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogBytes"
.end annotation


# instance fields
.field public final bytes:[B

.field public final offset:I

.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;[BI)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->bytes:[B

    .line 41
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->offset:I

    return-void
.end method
