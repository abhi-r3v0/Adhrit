.class Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFile;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 562
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    iget-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    goto :goto_0

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
