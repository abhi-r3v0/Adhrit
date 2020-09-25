.class final Lo/LogFileManager$onNavigationEvent;
.super Lo/LogFileManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final intValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lo/LogFileManager;-><init>(Ljava/lang/String;Lo/LogFileManager$3;)V

    .line 128
    iput p2, p0, Lo/LogFileManager$onNavigationEvent;->intValue:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 123
    check-cast p1, Lo/LogFileManager;

    invoke-super {p0, p1}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p1

    return p1
.end method

.method protected final intValue()I
    .locals 1

    .line 138
    iget v0, p0, Lo/LogFileManager$onNavigationEvent;->intValue:I

    return v0
.end method

.method protected final isInt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntegerChildName(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lo/LogFileManager;->access$100(Lo/LogFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
