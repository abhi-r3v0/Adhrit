.class Lo/ImmutableList$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field static final EMPTY:Lo/ImmutableList$extraCallback;


# instance fields
.field private final length:I

.field private final name:Ljava/lang/String;

.field private final parent:Lo/ImmutableList$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1131
    new-instance v0, Lo/ImmutableList$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lo/ImmutableList$extraCallback;-><init>(Lo/ImmutableList$extraCallback;Ljava/lang/String;I)V

    sput-object v0, Lo/ImmutableList$extraCallback;->EMPTY:Lo/ImmutableList$extraCallback;

    return-void
.end method

.method constructor <init>(Lo/ImmutableList$extraCallback;Ljava/lang/String;I)V
    .locals 0

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p1, p0, Lo/ImmutableList$extraCallback;->parent:Lo/ImmutableList$extraCallback;

    .line 1135
    iput-object p2, p0, Lo/ImmutableList$extraCallback;->name:Ljava/lang/String;

    .line 1136
    iput p3, p0, Lo/ImmutableList$extraCallback;->length:I

    return-void
.end method


# virtual methods
.method child(Ljava/lang/String;)Lo/ImmutableList$extraCallback;
    .locals 2

    .line 1144
    new-instance v0, Lo/ImmutableList$extraCallback;

    iget v1, p0, Lo/ImmutableList$extraCallback;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lo/ImmutableList$extraCallback;-><init>(Lo/ImmutableList$extraCallback;Ljava/lang/String;I)V

    return-object v0
.end method

.method getLength()I
    .locals 1

    .line 1140
    iget v0, p0, Lo/ImmutableList$extraCallback;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1149
    iget v0, p0, Lo/ImmutableList$extraCallback;->length:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1152
    iget-object v0, p0, Lo/ImmutableList$extraCallback;->name:Ljava/lang/String;

    return-object v0

    .line 1155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ImmutableList$extraCallback;->parent:Lo/ImmutableList$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ImmutableList$extraCallback;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
